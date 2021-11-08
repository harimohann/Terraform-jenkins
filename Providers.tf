provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
      bucket = "hari.tf"
      key = "terraform.tfstate"
      region = "us-east-1"
  }
}
