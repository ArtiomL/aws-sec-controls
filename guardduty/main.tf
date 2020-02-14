# Infrastructure

# us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

resource "aws_guardduty_detector" "us-east-1" {
  count    = "${contains(var.regions, "us-east-1") ? 1 : 0}"
  provider = aws.us-east-1
  enable   = true
}

# us-east-2
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

resource "aws_guardduty_detector" "us-east-2" {
  count    = "${contains(var.regions, "us-east-2") ? 1 : 0}"
  provider = aws.us-east-2
  enable   = true
}

# us-west-1
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}

resource "aws_guardduty_detector" "us-west-1" {
  count    = "${contains(var.regions, "us-west-1") ? 1 : 0}"
  provider = aws.us-west-1
  enable   = true
}

# us-west-2
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_guardduty_detector" "us-west-2" {
  count    = "${contains(var.regions, "us-west-2") ? 1 : 0}"
  provider = aws.us-west-2
  enable   = true
}

# ap-south-1
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

resource "aws_guardduty_detector" "ap-south-1" {
  count    = "${contains(var.regions, "ap-south-1") ? 1 : 0}"
  provider = aws.ap-south-1
  enable   = true
}

# ap-northeast-2
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
}

resource "aws_guardduty_detector" "ap-northeast-2" {
  count    = "${contains(var.regions, "ap-northeast-2") ? 1 : 0}"
  provider = aws.ap-northeast-2
  enable   = true
}

# ap-southeast-1
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
}

resource "aws_guardduty_detector" "ap-southeast-1" {
  count    = "${contains(var.regions, "ap-southeast-1") ? 1 : 0}"
  provider = aws.ap-southeast-1
  enable   = true
}

# ap-southeast-2
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}

resource "aws_guardduty_detector" "ap-southeast-2" {
  count    = "${contains(var.regions, "ap-southeast-2") ? 1 : 0}"
  provider = aws.ap-southeast-2
  enable   = true
}

# ap-northeast-1
provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}

resource "aws_guardduty_detector" "ap-northeast-1" {
  count    = "${contains(var.regions, "ap-northeast-1") ? 1 : 0}"
  provider = aws.ap-northeast-1
  enable   = true
}

# ca-central-1
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

resource "aws_guardduty_detector" "ca-central-1" {
  count    = "${contains(var.regions, "ca-central-1") ? 1 : 0}"
  provider = aws.ca-central-1
  enable   = true
}

# eu-central-1
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}

resource "aws_guardduty_detector" "eu-central-1" {
  count    = "${contains(var.regions, "eu-central-1") ? 1 : 0}"
  provider = aws.eu-central-1
  enable   = true
}

# eu-west-1
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}

resource "aws_guardduty_detector" "eu-west-1" {
  count    = "${contains(var.regions, "eu-west-1") ? 1 : 0}"
  provider = aws.eu-west-1
  enable   = true
}

# eu-west-2
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

resource "aws_guardduty_detector" "eu-west-2" {
  count    = "${contains(var.regions, "eu-west-2") ? 1 : 0}"
  provider = aws.eu-west-2
  enable   = true
}

# eu-west-3
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
}

resource "aws_guardduty_detector" "eu-west-3" {
  count    = "${contains(var.regions, "eu-west-3") ? 1 : 0}"
  provider = aws.eu-west-3
  enable   = true
}

# eu-north-1
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}

resource "aws_guardduty_detector" "eu-north-1" {
  count    = "${contains(var.regions, "eu-north-1") ? 1 : 0}"
  provider = aws.eu-north-1
  enable   = true
}

# sa-east-1
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
}

resource "aws_guardduty_detector" "sa-east-1" {
  count    = "${contains(var.regions, "sa-east-1") ? 1 : 0}"
  provider = aws.sa-east-1
  enable   = true
}
