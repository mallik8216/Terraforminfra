terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

backend "s3" {
   bucket ="mybucketcnc"
   key  = "myinfrakey" #key should be unique
   region = "us-east-1"
   dynamodb_table = "mybucketcnc-locking"
  }
} 




provider "aws" {
  # Configuration options
  region = "us-east-1"
}


