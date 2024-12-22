resource "azurerm_windows_virtual_machine" "vm-b" {
  for_each              = var.vm
  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = each.value.size
  admin_username        = "beingbrijal"
  admin_password        = "Beingbrijal123456"
  network_interface_ids = [data.azurerm_network_interface.nic-b.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}


