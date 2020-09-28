resource "azurerm_public_ip" "public" {
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group
  allocation_method            = var.type
  sku                          = var.sku
  ip_version                   = var.ip_version
}
