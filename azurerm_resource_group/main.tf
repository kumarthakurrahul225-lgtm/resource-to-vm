resource "azurerm_resource_group" "bholu"{
for_each = var.rg78
name = each.value.name
location = each.value.location

}