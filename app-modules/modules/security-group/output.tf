output "security_group-id" {
  value = aws_security_group.sg-demo.arn
}
output "security_group-name" {
  value = aws_security_group.sg-demo.name
}
output "security_group-owner" {
  value = aws_security_group.sg-demo.owner_id
}
output "security_group-vpc" {
  value = aws_security_group.sg-demo.vpc_id
}