resource "azurerm_sql_server" "my_db_server" {
  name                         = "mydbserver"
  resource_group_name          = azurerm_resource_group.my_rg.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.db_username
  administrator_login_password = var.db_password
}

resource "azurerm_sql_database" "my_db" {
  name                = "mydb"
  resource_group_name = azurerm_resource_group.my_rg.name
  location            = var.location
  server_name         = azurerm_sql_server.my_db_server.name
  edition             = "Basic"
  requested_service_objective_name = var.db_sku_name
}
