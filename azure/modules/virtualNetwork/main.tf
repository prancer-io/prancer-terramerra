resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg
  address_space       = [var.address_space]
  location            = var.location
  tags                = var.tags
}
