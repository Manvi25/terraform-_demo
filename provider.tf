terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
    backend "s3" {
      bucket = "my-aws-bucket1234"
      key    = "key/terraform.tfstate"
      region = "ap-south-1"
      dynamodb_table = "state-file-locking"
   }
 }

provider "aws" {
  region = "ap-south-1"  
}