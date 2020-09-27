resource "azurerm_monitor_diagnostic_setting" "diagnosticSettings" {
  name               = var.ds_name
  target_resource_id = var.ds_target_resource_id
  storage_account_id = var.ds_storage_id
  eventhub_name      = var.ds_eventhub_name

  log {
    category = var.ds_log_category
    enabled  = var.ds_log_enabled

    retention_policy {
      enabled = var.ds_log_retention_enabled
      days    = var.ds_log_retention_days
    }
  }

  metric {
    category = var.ds_metric_category
    enabled  = var.ds_metric_enabled

    retention_policy {
      enabled = var.ds_metric_retention_enabled
      days    = var.ds_metric_retention_days
    }
  }
}
