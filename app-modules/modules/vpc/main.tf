resource "aws_vpc" "my-default" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.Name
  }
}