nsg = {
  nsg1 = {
    name                = "frontend-nsg"
    location            = "eastus"
    resource_group_name = "monu"

    security_rule = {
      name                       = "allow-all-tcp"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}