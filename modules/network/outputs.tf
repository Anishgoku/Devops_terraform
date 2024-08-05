output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "db_subnets" {
  value = aws_subnet.db[*].id
}

output "web_security_group" {
  value = aws_security_group.web_security_group.id
}

output "app_security_group" {
  value = aws_security_group.app_security_group.id
}

output "db_security_group" {
  value = aws_security_group.db_security_group.id
}