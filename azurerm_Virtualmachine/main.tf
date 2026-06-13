resource "azurerm_linux_virtual_machine" "main" {
  for_each = var.virtual_machine

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  size                = each.value.size

  network_interface_ids = [
    data.azurerm_network_interface.nic.id
  ]

  admin_username = "azureuser"
  admin_password = "DevOps@12345"

  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}
data "azurerm_network_interface" "nic" {
  name                = "tinu"
  resource_group_name = "monu"
}