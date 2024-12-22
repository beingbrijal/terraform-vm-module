data "azurerm_network_interface" "nic-b" {
  name                = "jupiter-nic"
  resource_group_name = "jupiter-rg"
}