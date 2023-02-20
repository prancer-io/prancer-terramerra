resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

resource "azurerm_monitor_action_group" "main" {
  name                = "example-actiongroup"
  resource_group_name = azurerm_resource_group.example.name
  short_name          = "p0action"

  webhook_receiver {
    name        = "callmyapi"
    service_uri = "http://example.com/alert"
  }
}

resource "azurerm_storage_account" "to_monitor" {
  name                     = "examplesa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_monitor_activity_log_alert" "main" {
  name                = "example-activitylogalert"
  resource_group_name = azurerm_resource_group.example.name
  scopes              = [azurerm_resource_group.example.id]
  description         = "This alert will monitor a specific storage account updates."

  criteria {
    resource_id    = azurerm_storage_account.to_monitor.id
    operation_name = "Microsoft.Storage/storageAccounts/write"
    category       = "Recommendation"
  }

  action {
    action_group_id = azurerm_monitor_action_group.main.id

    webhook_properties = {
      from = "terraform"
    }
  }
}