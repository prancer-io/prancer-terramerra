resource "azurerm_storage_blob" "storageBlob" {
  name                   = var.storage_blob_name
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = var.storage_blob_type
  size                   = var.storage_blob_size
}
