terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.0"
    }
  }

  backend "s3" {
    bucket = "81s-remote-state-k8"
    key    = "expense-eks"
    region = "us-east-1"
    dynamodb_table = "81s-locking-k8"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}