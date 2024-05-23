module "sns" {
  source = "./modules/sns"

}

module "iam-user" {
  source = "./modules/iam-user"

}
module "iam-group" {
  source = "./modules/iam-group"
  
}

module "security_group" {
  source = "./modules/security-group"

}

module "target-group" {
  source = "./modules/target-group"

  vpc_id = ""
}

module "vpc" {
  source = "./modules/vpc"

  region = "us-east-2"
  profile = "default"
  Name = "vpc-test1-module"
}

module "launch-configuration" {
  source = "./modules/launch-configuration"

  subnet_ids = ""
  security_group_ids = ""
  vpc_id = ""
  ami_id = ""
  key_name = ""
}

module "rds" {
  source = "./modules/rds"

  security_group_ids = ""
  db_password = ""
  subnet_ids = ""
}

module "alb" {
  source = "./modules/alb"
  subnet_ids = ""
  vpc_id = ""
}

