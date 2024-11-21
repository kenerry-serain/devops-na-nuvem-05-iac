terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::968225077300:role/DevOpsNaNuvemWeekRole-e44a2276-815d-453a-9413-46e672de5f3f"
  }
}
