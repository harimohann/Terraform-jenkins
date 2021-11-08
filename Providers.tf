provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
      bucket = "harie.tf"
      key = "terraform.tfstate"
      region = "us-east-1"
  }
}
