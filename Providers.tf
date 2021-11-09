provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
      bucket = "hello.bucket"
      key = "terraform.tfstate"
      region = "us-east-1"
  }
}
