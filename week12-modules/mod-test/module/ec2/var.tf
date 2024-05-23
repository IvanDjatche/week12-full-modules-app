variable "ami" {
  type        = string
  description = "Amazon machine image"
  default     = "ami-01eccbf80522b562b"
}
variable "region" {
  description = "availibility zone"
  default     = "us-east-1"
}
variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}
variable "name" {
  type        = string
  description = "instance type"
  default     = "Dev-Webserver"
}
variable "Team" {
  type        = string
  description = "Team"
  default     = "DevOps"
}