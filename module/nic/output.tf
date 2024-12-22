data "azurerm_subnet" "subnet-data-b" {
  name                 = "jupiter-subnet"
  virtual_network_name = "jupiter-vnet"
  resource_group_name  = "jupiter-rg"
}

data "azurerm_public_ip" "pip-data-b" {
  name                = "jupiter-pip"
  resource_group_name = "jupiter-rg"
}

data "azurerm_network_security_group" "nsg-data-b" {
  name                = "jupiter-nsg"
  resource_group_name = "jupiter-rg"
}

