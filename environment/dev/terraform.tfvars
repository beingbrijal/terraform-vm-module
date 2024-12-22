rg = {
  rg = {
    name     = "jupiter-rg"
    location = "west us"
  }
}
vnet = {
  vnet = {
    name                = "jupiter-vnet"
    resource_group_name = "jupiter-rg"
    location            = "west us"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet = {
    name                 = "jupiter-subnet"
    resource_group_name  = "jupiter-rg"
    virtual_network_name = "jupiter-vnet"
    address_prefixes     = ["10.0.0.0/24"]
  }
}
nsg = {
  nsg = {
    name                = "jupiter-nsg"
    resource_group_name = "jupiter-rg"
    location            = "west us"
  }
}
pip = {
  pip = {
    name                = "jupiter-pip"
    resource_group_name = "jupiter-rg"
    location            = "west us"
    allocation_method   = "Static"

  }
}
nic = {
  nic = {
    name                = "jupiter-nic"
    resource_group_name = "jupiter-rg"
    location            = "west us"

  }
}
vm = {
  vm = {
    name                = "jupiter-vm"
    resource_group_name = "jupiter-rg"
    location            = "west us"
    size                = "Standard_F2"
  }
}