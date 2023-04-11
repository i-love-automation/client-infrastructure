#
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "i-love-automation"

    workspaces {
      name = "client"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "project" {
  type        = string
  nullable    = false
  description = "The name of the project that hosts the environment"
  default     = "i-love-automation"
}

variable "service" {
  type        = string
  nullable    = false
  description = "The name of the service that will be run on the environment"
  default     = "client"
}

output "client_s3_bucket_name" {
  value = aws_s3_bucket.client.bucket
}
