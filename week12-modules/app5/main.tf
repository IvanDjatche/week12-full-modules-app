
resource "aws_instance" "demo" {
  ami                                  = "ami-0bb84b8ffd87024d8"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordp-key"
  monitoring                           = false
  security_groups                      = ["launch-wizard-4"]
  subnet_id                            = "subnet-099a92c51fb8166fd"
  tags = {
    Name = "import-server1"
  }
 
}
