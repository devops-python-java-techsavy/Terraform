output "vm_name" {
  value = module.virtual_machine.vm_name
}

output "lb_ip_address" {
  value = module.load_balancer.lb_ip_address
}

output "db_connection_string" {
  value = module.sql_database.db_connection_string
}
