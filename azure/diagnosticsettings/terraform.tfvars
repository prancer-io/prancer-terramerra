location       = "String<Specifies the Azure location inside of Europe where the resource exists. Changing this forces a new resource to be created.>"
resource_group = "prancer-test-rg"

storage_count        = 1
storage_name         = "prancerstorageaccount007"
accountTier          = "Standard"
replicationType      = "LRS"
enableSecureTransfer = false

kv_name = "prancer-key-vault"
kv_sku  = "standard"

ds_name                     = "prancer-kv-diagnostic"
ds_log_category             = "AuditEvent"
ds_log_enabled              = false
ds_log_retention_enabled    = true
ds_log_retention_days       = 7
ds_metric_category          = "AllMetrics"
ds_metric_enabled           = true
ds_metric_retention_enabled = true
ds_metric_retention_days    = 7

tags = {}
