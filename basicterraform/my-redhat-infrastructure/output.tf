output "app_url" {
  description = "URL of the deployed application"
  value       = module.application.app_url
}

output "db_connection" {
  description = "Database connection string"
  value       = module.database.db_connection
}
