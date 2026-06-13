data "azurerm_subnet" "frontend" {
  name                 = "frontend"
  virtual_network_name = "sidhu"
  resource_group_name  = "monu"
}

resource "azurerm_network_interface" "jitu" {
  for_each = var.nic

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_configuration.name
    subnet_id                     = data.azurerm_subnet.frontend.id
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
  }
}