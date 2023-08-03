provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  instance_type = var.instance_type
}

module "load_balancer" {
  source = "./modules/load_balancer"
}

module "database" {
  source             = "./modules/database"
  db_instance_class = var.db_instance_class
  db_username       = var.db_username
  db_password       = var.db_password
}


