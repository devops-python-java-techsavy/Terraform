resource "azurerm_public_ip" "my_lb_public_ip" {
  name                = "my-lb-publicip"
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
  allocation_method   = "Dynamic"
}

resource "azurerm_lb" "my_lb" {
  name                = "my-lb"
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.my_lb_public_ip.id
  }
}

resource "azurerm_lb_backend_address_pool" "my_lb_backend" {
  name                = "my-lb-backend"
  resource_group_name = azurerm_resource_group.my_rg.name
  loadbalancer_id     = azurerm_lb.my_lb.id
}
