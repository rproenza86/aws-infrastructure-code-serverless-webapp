# Input variables
variable "access_key" {
  description = "AWS account access key value to get access to your infrastructure."
}

variable "secret_key" {
  description = "AWS account secret key value to get access to your infrastructure."
}

variable "region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# NOTE: The region variable is optional because a default value is set

