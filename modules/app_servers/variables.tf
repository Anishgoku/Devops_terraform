variable "vpc_id" {
  description = "VPC ID"
}

variable "private_subnets" {
  description = "List of private subnets"
}

variable "instance_type" {
  description = "Type of instance"
  default = "t2.micro"
}
variable "app_security_group" {
  description = "Security group for the application servers"
}

variable "ami" {
  default = "ami-04a81a99f5ec58529"
}
