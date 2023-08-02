resource "azurerm_virtual_machine" "my_vm" {
  name                  = "my-vm"
  location              = var.location
  resource_group_name   = azurerm_resource_group.my_rg.name
  network_interface_ids = [azurerm_network_interface.my_nic.id]
  vm_size               = var.vm_size

  os_profile {
    computer_name  = "hostname"
    admin_username = "adminuser"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}

resource "azurerm_resource_group" "my_rg" {
  name     = "my-resource-group"
  location = var.location
}

resource "azurerm_network_interface" "my_nic" {
  name                = "my-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name

  ip_configuration {
    name                          = "my-nic-cfg"
    subnet_id                     = azurerm_subnet.my_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_subnet" "my_subnet" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_virtual_network" "my_vnet" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name
}
