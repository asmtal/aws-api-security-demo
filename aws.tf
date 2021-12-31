# Connect Terraform to AWS.
terraform {
  backend "remote" {
    organization = "<organization-name>"
    workspaces {
      name = "<workspace-name>"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.70.0"
    }
  }
  required_version = ">= 1.1.2"
}

# Call credentials from remote secrets.
variable "access_key_id" {
  type      = string
  sensitive = true
}
variable "secret_access_key" {
  type      = string
  sensitive = true
}
provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key_id
  secret_key = var.secret_access_key
}

# Declare intrinsic variables.
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
locals {
  account_id = data.aws_caller_identity.current.account_id
  region     = data.aws_region.current.name
}
