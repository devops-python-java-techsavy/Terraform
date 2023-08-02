output "db_endpoint" {
  description = "The endpoint URL of the database"
  value       = aws_db_instance.my_database.endpoint
}

