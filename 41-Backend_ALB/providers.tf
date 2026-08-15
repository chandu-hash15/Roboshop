terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.31.0"
    }
  }
  backend "s3" {
    bucket = "chathrun-mybackendalb-module"
    key    = "chathrun-backend-alb-module"
    region = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"

}