output "alb_dns_name" {
  value = module.web_servers.alb_dns_name
}

output "rds_endpoint" {
  value = module.rds.endpoint
}
