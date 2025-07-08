terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "mahesh-terra-bkt"
    key = "maheshForeach"
    region = "us-east-1"
    dynamodb_table = "maheshs3table"
}
}

provider "aws" {
  region = "us-east-1"
}