
resource "azurerm_virtual_network" "vnetk1"{
for_each = var.azurevnet
name = each.value.name
location = each.value.location
resource_group_name = each.value.rg-name
address_space = each.value.address_spaces

}
