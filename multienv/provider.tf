terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }

backend "s3" {
    bucket = "terraform-practice15"
    key    = "terraform_s3bucket"
    dynamodb_table = "Dynamotableterraform"
    region = "us-east-1"
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}




