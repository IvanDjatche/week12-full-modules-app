variable "cidr_block" {
  default = "10.10.0.0/16"
}
variable "Name" {
    type = string
    default = "My-vpc_module"
  
}
variable "instance_tenancy" {
    default = "default"
}

variable "region" {
  default = "us-east-1"
}
variable "profile" {
  default = "default"
}