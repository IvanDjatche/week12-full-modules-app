# variables.tf

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "launch_configuration_name" {
  description = "The name of the launch configuration"
  type        = string
  default     = "my-launch-configuration"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key pair to use for the instances"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instances"
  type        = list(string)
}
variable "subnet_ids" {
  description = "A list of subnet IDs for the Auto Scaling group"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID where the resources will be created"
  type        = string
}
variable "autoscaling-group" {
  type = string
  default = "my-autoscaling-group"
}
variable "key" {
  type = string
  default = "Name"
}
variable "sg_name" {
  type = string
  default = "sg-launch-config"
}