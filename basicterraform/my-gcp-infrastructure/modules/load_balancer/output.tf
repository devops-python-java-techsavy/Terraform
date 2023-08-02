output "lb_ip_address" {
  description = "The IP address of the load balancer"
  value       = google_compute_global_address.my_lb.address
}
