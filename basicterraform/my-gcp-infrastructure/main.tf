provider "google" {
  credentials = file("path/to/your/credentials.json")
  project     = var.project_id
  region      = var.region
}

module "compute_instance" {
  source        = "./modules/compute_instance"
  instance_type = var.instance_type
  project_id    = var.project_id
}

module "load_balancer" {
  source          = "./modules/load_balancer"
  load_balancer_name = var.load_balancer_name
  project_id      = var.project_id
}

module "database" {
  source            = "./modules/database"
  db_instance_type = var.db_instance_type
  db_username     = var.db_username
  db_password     = var.db_password
  project_id      = var.project_id
}

