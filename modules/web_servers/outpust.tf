output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "private_ips" {
  value = aws_autoscaling_group.web.instances[*].private_ip
}