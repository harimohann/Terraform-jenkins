provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
      bucket = "tf.state.bucket"
      key = "terraform.tfstate"
      region = "var.region"
  }
}
