output "lb_ip_address" {
  description = "The IP address of the Load Balancer"
  value       = azurerm_public_ip.my_lb_public_ip.ip_address
}
