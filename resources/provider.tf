terraform {
  required_version = "1.11.4"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }


    backend "s3" {
  }
}


provider "aws" {
  region     = var.region
  profile = "default"
  # access_key = var.access_key
  # secret_key = var.secret_key

}