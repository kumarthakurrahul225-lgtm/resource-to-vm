data "azurerm_virtual_network" "local" {
  for_each = var.vnet_peering

  name                = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_virtual_network" "remote" {
  for_each = var.vnet_peering

  name                = each.value.remote_vnet_name
  resource_group_name = each.value.remote_rg_name
}

resource "azurerm_virtual_network_peering" "main" {
  for_each = var.vnet_peering

  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = data.azurerm_virtual_network.remote[each.key].id

  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}