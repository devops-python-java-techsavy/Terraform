provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
}

module "virtual_machine" {
  source   = "./modules/virtual_machine"
  vm_size  = var.vm_size
  location = var.location
}

module "load_balancer" {
  source     = "./modules/load_balancer"
  location   = var.location
}

module "sql_database" {
  source       = "./modules/sql_database"
  db_sku_name  = var.db_sku_name
  db_username  = var.db_username
  db_password  = var.db_password
  location     = var.location
}
