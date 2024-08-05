variable "vpc_id" {
  description = "VPC ID"
}

variable "public_subnets" {
  description = "List of public subnets"
}

variable "web_security_group" {
  description = "Security group for the web servers"
}

variable "ami" {
  default = "ami-04a81a99f5ec58529"
}