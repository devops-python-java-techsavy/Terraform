resource "google_sql_database_instance" "my_database" {
  name             = "my-database"
  database_version = "MYSQL_5_7"

  settings {
    tier = var.db_instance_type

    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_user" "my_db_user" {
  name     = var.db_username
  instance = google_sql_database_instance.my_database.name
  password = var.db_password
}
