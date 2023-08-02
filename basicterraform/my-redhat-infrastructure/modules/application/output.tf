output "app_url" {
  description = "URL of the deployed application"
  value       = "http://${var.app_name}-${random_id.app_suffix.hex}.example.com"
}
