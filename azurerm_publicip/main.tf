
resource "azurerm_public_ip" "example" {
    for_each = var.public_ip
  name                = each.value.name
  resource_group_name = each.value.rg-name
  location            = each.value.location
  allocation_method   = each.value.method

 
}