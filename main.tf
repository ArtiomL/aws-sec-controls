# Infrastructure

locals {
  tags = {
    CreatedBy   = "Terraform"
    Environment = var.tag_environment
  }
}

provider "aws" {
  region = var.aws_region
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# GuardDuty
module "guardduty" {
  source  = "./guardduty"
  regions = var.regions
}

# IAM Access Analyzer
module "analyzer" {
  source          = "./analyzer"
  regions         = var.regions
  tag_name        = var.tag_name
  tag_environment = var.tag_environment
  tags_shared     = var.tags_shared
}

# Security Hub
module "securityhub" {
  source  = "./securityhub"
  regions = var.regions
}

# IAM
data "aws_iam_policy_document" "sns" {
  statement {
    effect  = "Allow"
    actions = ["SNS:Publish"]

    principals {
      type        = "Service"
      identifiers = ["events.amazonaws.com"]
    }

    resources = [aws_sns_topic.main.arn]
  }
}

# SNS
resource "aws_sns_topic" "main" {
  name = "top${var.tag_name}${var.tag_environment}"

  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "top${var.tag_name}${var.tag_environment}"
    }
  )
}

resource "aws_sns_topic_policy" "main" {
  arn    = aws_sns_topic.main.arn
  policy = data.aws_iam_policy_document.sns.json
}

resource "aws_sns_topic" "ue1" {
  provider = aws.us-east-1
  name     = "top${var.tag_name}${var.tag_environment}"

  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "top${var.tag_name}${var.tag_environment}"
    }
  )
}

resource "aws_sns_topic_policy" "ue1" {
  provider = aws.us-east-1
  arn      = aws_sns_topic.ue1.arn
  policy   = data.aws_iam_policy_document.sns.json
}

# CloudWatch
resource "aws_cloudwatch_event_rule" "main" {
  name          = "ruleSecHub${var.tag_name}${var.tag_environment}"
  description   = "Security Hub"
  event_pattern = file("${path.module}/patterns/securityhub.json")
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "ruleSecHub${var.tag_name}${var.tag_environment}"
    }
  )
}

resource "aws_cloudwatch_event_target" "main" {
  rule = aws_cloudwatch_event_rule.main.name
  arn  = aws_sns_topic.main.arn
}

resource "aws_cloudwatch_event_rule" "console" {
  provider      = aws.us-east-1
  name          = "ruleConsole${var.tag_name}${var.tag_environment}"
  description   = "Console Sign-in"
  event_pattern = file("${path.module}/patterns/console.json")
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "ruleConsole${var.tag_name}${var.tag_environment}"
    }
  )
}

resource "aws_cloudwatch_event_target" "console" {
  provider = aws.us-east-1
  rule     = aws_cloudwatch_event_rule.console.name
  arn      = aws_sns_topic.ue1.arn
}
