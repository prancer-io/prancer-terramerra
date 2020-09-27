module "storageAccount" {
  source                    = "../modules/storageAccount/"
  storage_count             = var.storage_count
  storage_name              = var.storage_name
  storage_rg_name           = var.resource_group
  location                  = var.location
  accountTier               = var.accountTier
  replicationType           = var.replicationType
  enableSecureTransfer      = var.enableSecureTransfer
  tags                      = var.tags
}

module "keyVault" {
  source                    = "../modules/keyVault/"
  name                      = var.kv_name
  location                  = var.location
  resourceGroup             = var.resource_group
  skuname                   = var.kv_sku
  tags                      = var.tags
}

module "diagnosticSettings" {
  source                      = "../modules/diagnosticSettings/"
  ds_name                     = var.ds_name
  ds_target_resource_id       = module.keyVault.vault_Id
  ds_storage_id               = module.storageAccount.storage_id[0]
  ds_log_category             = var.ds_log_category
  ds_log_enabled              = var.ds_log_enabled
  ds_log_retention_enabled    = var.ds_log_retention_enabled
  ds_log_retention_days       = var.ds_log_retention_days
  ds_metric_category          = var.ds_metric_category
  ds_metric_enabled           = var.ds_metric_enabled
  ds_metric_retention_enabled = var.ds_metric_retention_enabled
  ds_metric_retention_days    = var.ds_metric_retention_days
}
