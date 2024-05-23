module "server1" {
  source        = "../modules/ec2"
  ami           = "ami-01eccbf80522b562b"
  instance_type = "t2.micro"
  region        = "us-east-1"
  name          = "Dev-from module"
  Team          = "DevOps"
}

output "public-ip" {
    value = module.server1.public-ip
}