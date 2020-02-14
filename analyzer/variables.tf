# Input Variables

variable "regions" {
  description = "A list of regions to enable IAM Access Analyzer in"

  default = [
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2",
    "ap-south-1",
    "ap-northeast-2",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-northeast-1",
    "ca-central-1",
    "eu-central-1",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    "eu-north-1",
    "sa-east-1",
  ]
}

# Tags
variable "tag_name" {
  description = "Name tag"
  default     = "AWSLabs"
}

variable "tag_environment" {
  description = "Environment tag"
  default     = "Prod"
}

variable "tags_shared" {
  description = "Other tags assigned to all resources"
  type        = map(string)

  default = {
    Owner        = "T.Durden"
    BusinessUnit = "Paper Street Soap Co."
    Department   = "Mischief"
    CostCenter   = "7741"
    Project      = "Mayhem"
  }
}