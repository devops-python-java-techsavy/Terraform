output "db_connection_string" {
  description = "The connection string for the database"
  value       = google_sql_database_instance.my_database.connection_name
}
