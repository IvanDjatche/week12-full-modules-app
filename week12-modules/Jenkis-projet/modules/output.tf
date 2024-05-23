output "public-ip" {
  value = aws_instance.jenkins.public_ip
}
output "public-dns" {
  value = aws_instance.jenkins.public_dns
}
output "id" {
  value = aws_instance.jenkins.id
}

output "ssh-command" {
  value = "ssh -i ${aws_key_pair.ec2_key.key_name}.pem ec2-user@${aws_instance.jenkins.public_dns}"
}
