variable "region" {
  type = string
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string

}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
  default     = "my-target-group"
}

variable "protocol" {
  description = "The protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "port" {
  description = "The port for the target group"
  type        = number
  default     = 80
}
variable "target_type_ip" {
  type = string
  default = "ip"
}
variable "lb_sg_name" {
  type = string
  default = "lb_sg"
}

variable "health_check_path" {
  description = "The path for the health check"
  type        = string
  default     = "/"
}
