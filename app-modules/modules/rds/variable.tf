

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}
variable "profile" {
  default = "default"
}

variable "rds_name" {
  type = string
  default = "rds_sg"
}
variable "db_instance_name" {
  description = "The identifier for the RDS instance"
  type        = string
  default     = "my-rds-inst"
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "8.0"
}

variable "vpc_id" {
  description = "The VPC ID to create the RDS instance in"
  type        = string
  default = ""
}

variable "subnet_ids" {
  description = "A list of subnet IDs to use for the RDS instance"
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the RDS instance"
  type        = list(string)
}
