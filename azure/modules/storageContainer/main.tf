resource "azurerm_storage_container" "storageContainer" {
  name                  = var.storage_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.storage_container_access_type
}
