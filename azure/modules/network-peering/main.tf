
resource "azurerm_virtual_network_peering" "vnet1peering" {
  name                         = var.peering_name
  resource_group_name          = var.vnet_rg1
  virtual_network_name         = var.vnet_name1
  remote_virtual_network_id    = var.vnet1_id
  allow_virtual_network_access = var.allow_virtual_network_access1
  allow_forwarded_traffic      = var.allow_forwarded_traffic1
  # `allow_gateway_transit` must be set to false for vnet Global Peering
  allow_gateway_transit        = var.allow_gateway_transit1
}

resource "azurerm_virtual_network_peering" "vnet2peering" {
  name                         = var.peering_name
  resource_group_name          = var.vnet_rg2
  virtual_network_name         = var.vnet_name2
  remote_virtual_network_id    = var.vnet2_id
  allow_virtual_network_access = var.allow_virtual_network_access2
  allow_forwarded_traffic      = var.allow_forwarded_traffic2
  # `allow_gateway_transit` must be set to false for vnet Global Peering
  allow_gateway_transit        = var.allow_gateway_transit2
}
