resource "aws_vpc" "haritech_vpc" {
  cidr_block         = var.vpc_cidr
  instance_tenancy   = var.tenancy
  tags = {
    Name = "${terraform.workspace}-haritech-vpc"
  }
}