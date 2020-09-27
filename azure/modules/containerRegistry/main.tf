resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = var.acr_rg
  location                 = var.location
  sku                      = var.acr_sku
  admin_enabled            = var.acr_admin_enabled
  georeplication_locations = var.acr_georeplication_locations
}
