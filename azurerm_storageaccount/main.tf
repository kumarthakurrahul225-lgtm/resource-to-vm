resource "azurerm_storage_account" "munu"{
for_each = var.stg5
name =each.value.name
location = each.value.location
resource_group_name = each.value.rg-name
account_tier = each.value.tier
account_replication_type = each.value.type

}