data "azurerm_subnet" "bastion" {
  name                 = "AzureBastionSubnet"   # ✅ Must be exactly this
  virtual_network_name = "sidhu"
  resource_group_name  = "monu"
}

data "azurerm_public_ip" "pip" {
  name                = "public"
  resource_group_name = "monu"
}

resource "azurerm_bastion_host" "main" {
  for_each            = var.azure_bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.bastion.id
    public_ip_address_id = data.azurerm_public_ip.pip.id
  }
}