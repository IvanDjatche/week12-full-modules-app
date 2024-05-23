variable "Name" {
  default = "security-group-demo"
}
variable "Team" {
  default = "DevOps"
}
variable "region" {
  default = "us-east-1"
}
variable "profile" {
  default = "default"
}
variable "description" {
  default = "Allow ssh and http inbound traffic"
}
variable "vpc_id" {
  default = ""
}