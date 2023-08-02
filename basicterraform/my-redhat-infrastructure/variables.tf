variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "app_port" {
  description = "Port on which the application will run"
  type        = number
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
}
