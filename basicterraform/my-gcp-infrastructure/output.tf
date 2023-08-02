output "instance_name" {
  value = module.compute_instance.instance_name
}

output "lb_ip_address" {
  value = module.load_balancer.lb_ip_address
}

output "db_connection_string" {
  value = module.database.db_connection_string
}
