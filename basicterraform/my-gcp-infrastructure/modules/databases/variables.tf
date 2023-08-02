variable "db_instance_type" {
  description = "The database instance type"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}
