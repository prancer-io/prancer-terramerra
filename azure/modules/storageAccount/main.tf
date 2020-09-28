resource "azurerm_storage_account" "storageAccount" {
  count                     = var.storage_count
  name                      = var.storage_name
  resource_group_name       = var.storage_rg_name
  location                  = var.location
  account_tier              = var.accountTier
  account_replication_type  = var.replicationType
  enable_https_traffic_only = var.enableSecureTransfer
  tags                      = var.tags
}
