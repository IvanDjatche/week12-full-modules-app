variable "region" {
  type    = string
  default = "us-east-1"
}
variable "vers" {
  type    = string
  default = "4.61.0"
}
variable "ami" {

  default = ""
}
variable "vpc_security_group_ids" {
  default = ""
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "Name" {
  type    = string
  default = "jenkins-server"
}
variable "key_name" {

  default = "jenkins-keypair"
}
variable "user_data" {

  default = ""
}
variable "env" {
  type    = string
  default = "Dev"
}
variable "Team" {
  type    = string
  default = "DevOps"
}
variable "volume_size" {
  default = 30
}
variable "volume_type" {
  default = "gp2"
}