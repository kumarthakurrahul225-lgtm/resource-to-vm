nic = {
  nic1 = {
    name                = "tinu"
    location            = "eastus"
    resource_group_name = "monu"

    ip_configuration = {
      name                          = "internal"
      subnet_name                   = "frontend"
      private_ip_address_allocation = "Dynamic"
    }
  }
}