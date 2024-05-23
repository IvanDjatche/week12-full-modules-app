terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
locals {
  env = "dev"
}
output "name" {
  value = local.env
}

module "vpc" {
  source = "github.com/IvanDjatche/week07-Terraform/terraform-w07"
}