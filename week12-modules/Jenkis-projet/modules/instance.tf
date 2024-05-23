resource "aws_instance" "jenkins" {
  ami                    = data.aws_ami.jk.id
  vpc_security_group_ids = [aws_security_group.jenk-sg.id]
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = file("jenkins.sh")

  # root_block_device {
  #   volume_size = var.volume_size # Change this to the desired size
  #   volume_type = var.volume_type
  # }

  tags = {
    Name = var.Name
    env  = var.env
    Team = var.Team
  }

}