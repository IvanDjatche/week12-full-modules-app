variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}
variable "profile" {
  default = "default"
}

variable "vpc_id" {
  description = "The VPC ID to create resources in"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to use for the ALB"
  type        = list(string)
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "my-alb"
}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
  default     = "my-target-group"
}

variable "protocol" {
  description = "The protocol for the ALB and target group"
  type        = string
  default     = "HTTP"
}

variable "port" {
  description = "The port for the ALB and target group"
  type        = number
  default     = 80
}

variable "health_check_path" {
  description = "The path for the health check"
  type        = string
  default     = "/"
}
variable "alb_name" {
  type = string
  default = "alb_sg"
}