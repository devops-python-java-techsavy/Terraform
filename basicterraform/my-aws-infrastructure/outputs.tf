output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "load_balancer_dns" {
  value = module.load_balancer.lb_dns_name
}

output "database_endpoint" {
  value = module.database.db_endpoint
}
