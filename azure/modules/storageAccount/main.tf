resource "azurerm_resource_group" "main" {
  name     = "example-resources"
  location = "West Europe"
}
resource "azurerm_storage_account" "storageAccount" {
  count                     = var.storage_count
  name                      = var.storage_name
  resource_group_name       = azurerm_resource_group.main.name
  location                  = var.location
  account_tier              = var.accountTier
  account_replication_type  = var.replicationType
  enable_https_traffic_only = var.enableSecureTransfer
  allow_blob_public_access  = var.allow_blob_public_access
  tags                      = var.tags
}

resource "azurerm_monitor_activity_log_alert" "main" {
  name                = "example-activitylogalert"
  resource_group_name = azurerm_resource_group.main.name
  scopes              = [azurerm_resource_group.main.id]
  description         = "This alert will monitor a specific storage account updates."
  enabled             = false
  criteria {
    resource_id    = azurerm_storage_account.storageAccount[0].id
    operation_name = "Microsoft.Storage/storageAccounts/write"
    category       = "Recommendation"
  }
}

resource "azurerm_monitor_log_profile" "example" {
  name = "default"

  categories = "list<List of categories of the logs. It should configure to capture all the activities>"

  locations = [
    "westus",
    "global",
  ]
  storage_account_id = azurerm_storage_account.storageAccount[0].id
  retention_policy {
    enabled = false
    days    = 7
  }
}