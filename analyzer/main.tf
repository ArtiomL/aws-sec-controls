# Infrastructure

locals {
  tags = {
    CreatedBy   = "Terraform"
    Environment = var.tag_environment
  }
}

# us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

resource "aws_accessanalyzer_analyzer" "us-east-1" {
  count         = "${contains(var.regions, "us-east-1") ? 1 : 0}"
  provider      = aws.us-east-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# us-east-2
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

resource "aws_accessanalyzer_analyzer" "us-east-2" {
  count         = "${contains(var.regions, "us-east-2") ? 1 : 0}"
  provider      = aws.us-east-2
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# us-west-1
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}

resource "aws_accessanalyzer_analyzer" "us-west-1" {
  count         = "${contains(var.regions, "us-west-1") ? 1 : 0}"
  provider      = aws.us-west-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# us-west-2
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_accessanalyzer_analyzer" "us-west-2" {
  count         = "${contains(var.regions, "us-west-2") ? 1 : 0}"
  provider      = aws.us-west-2
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ap-south-1
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

resource "aws_accessanalyzer_analyzer" "ap-south-1" {
  count         = "${contains(var.regions, "ap-south-1") ? 1 : 0}"
  provider      = aws.ap-south-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ap-northeast-2
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
}

resource "aws_accessanalyzer_analyzer" "ap-northeast-2" {
  count         = "${contains(var.regions, "ap-northeast-2") ? 1 : 0}"
  provider      = aws.ap-northeast-2
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ap-southeast-1
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
}

resource "aws_accessanalyzer_analyzer" "ap-southeast-1" {
  count         = "${contains(var.regions, "ap-southeast-1") ? 1 : 0}"
  provider      = aws.ap-southeast-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ap-southeast-2
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}

resource "aws_accessanalyzer_analyzer" "ap-southeast-2" {
  count         = "${contains(var.regions, "ap-southeast-2") ? 1 : 0}"
  provider      = aws.ap-southeast-2
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ap-northeast-1
provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}

resource "aws_accessanalyzer_analyzer" "ap-northeast-1" {
  count         = "${contains(var.regions, "ap-northeast-1") ? 1 : 0}"
  provider      = aws.ap-northeast-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# ca-central-1
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

resource "aws_accessanalyzer_analyzer" "ca-central-1" {
  count         = "${contains(var.regions, "ca-central-1") ? 1 : 0}"
  provider      = aws.ca-central-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# eu-central-1
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}

resource "aws_accessanalyzer_analyzer" "eu-central-1" {
  count         = "${contains(var.regions, "eu-central-1") ? 1 : 0}"
  provider      = aws.eu-central-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# eu-west-1
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}

resource "aws_accessanalyzer_analyzer" "eu-west-1" {
  count         = "${contains(var.regions, "eu-west-1") ? 1 : 0}"
  provider      = aws.eu-west-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# eu-west-2
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

resource "aws_accessanalyzer_analyzer" "eu-west-2" {
  count         = "${contains(var.regions, "eu-west-2") ? 1 : 0}"
  provider      = aws.eu-west-2
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# eu-west-3
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
}

resource "aws_accessanalyzer_analyzer" "eu-west-3" {
  count         = "${contains(var.regions, "eu-west-3") ? 1 : 0}"
  provider      = aws.eu-west-3
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# eu-north-1
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}

resource "aws_accessanalyzer_analyzer" "eu-north-1" {
  count         = "${contains(var.regions, "eu-north-1") ? 1 : 0}"
  provider      = aws.eu-north-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}

# sa-east-1
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
}

resource "aws_accessanalyzer_analyzer" "sa-east-1" {
  count         = "${contains(var.regions, "sa-east-1") ? 1 : 0}"
  provider      = aws.sa-east-1
  analyzer_name = "acan${var.tag_name}${var.tag_environment}"
  tags = merge(
    local.tags,
    var.tags_shared,
    {
      "Name" = "acan${var.tag_name}${var.tag_environment}"
    },
  )
}
