output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.my_load_balancer.dns_name
}

