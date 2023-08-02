module "application" {
  source    = "./modules/application"
  app_name  = var.app_name
  app_port  = var.app_port
}

module "database" {
  source      = "./modules/database"
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
