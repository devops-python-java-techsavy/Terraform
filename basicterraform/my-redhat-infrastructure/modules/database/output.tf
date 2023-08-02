output "db_connection" {
  description = "Database connection string"
  value       = "mysql://${var.db_username}:${var.db_password}@${var.db_name}.example.com:3306/${var.db_name}"
}
