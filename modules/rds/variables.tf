variable "vpc_id" {
  description = "VPC ID"
}

variable "private_subnets" {
  description = "List of private subnets"
}

variable "db_security_group" {
  description = "Security group for the RDS instance"
}

variable "username" {
  description = "Username of db"
  default = "admin"
}

variable "password" {
  description = "Password of db"
  default = "password"
}
