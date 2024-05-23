output "vpc-id" {
  value = aws_vpc.my-default.id
}
output "vpc-arn" {
  value = aws_vpc.my-default.arn
}
output "vpc-tags" {
  value = aws_vpc.my-default.tags
}
output "vpc-cidr_block" {
  value = aws_vpc.my-default.cidr_block
}
output "vpc-owner_id" {
  value = aws_vpc.my-default.owner_id
}
output "vpc-instance_tenancy" {
  value = aws_vpc.my-default.instance_tenancy
}