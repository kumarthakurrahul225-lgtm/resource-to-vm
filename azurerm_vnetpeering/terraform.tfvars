vnet_peering = {
  peer1 = {
    name                  = "sidhu-to-tinku"
    resource_group_name   = "monu"
    virtual_network_name  = "sidhu"
    remote_vnet_name      = "tinku"
    remote_rg_name        = "monu"
  }

  peer2 = {
    name                  = "tinku-to-sidhu"
    resource_group_name   = "monu"
    virtual_network_name  = "tinku"
    remote_vnet_name      = "sidhu"
    remote_rg_name        = "monu"
  }
}