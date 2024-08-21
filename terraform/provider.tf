terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78s-remote-state"
    key    = "expense-dev-backend"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}