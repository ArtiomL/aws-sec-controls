# Input Variables

variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-1"
}

# S3
variable "force_destroy" {
  description = "All objects should be deleted from the bucket so that the bucket can be destroyed without error"
  default     = "true"
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
