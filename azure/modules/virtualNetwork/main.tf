resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg
  address_space       = [var.address_space]
  location            = var.location
  tags                = {
    "prancer_unique_id": "15f36246-6937-45b3-94f1-dfd76cc0bef5",
    "resource_type": "azurerm_virtual_machine"
  }
}
