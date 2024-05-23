resource "aws_iam_group" "grou1" {
  name = "provisioner"

}

resource "aws_instance" "name" {
  ami           = data.aws_ami.ami1.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ec2_key.key_name

  # lifecycle {
  #     prevent_destroy = false
  # }
  depends_on = [aws_key_pair.ec2_key, aws_iam_group.grou1,]

}

resource "null_resource" "null" {
    connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${aws_key_pair.ec2_key.key_name}.pem")
    host        = aws_instance.name.public_ip
  }
  provisioner "local-exec" {
    command = "echo hello"

  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "mkdir serge ivan",
      "pwd",
      "nproc"
    ]
  }
  provisioner "file" {
    source      = "${aws_key_pair.ec2_key.key_name}.pem"
    destination = "/tmp/key.pem"
  }
  depends_on = [local_file.ssh_key,aws_instance.name]
}