module "storageAccount" {
  source                    = "../modules/storageAccount/"
  storage_count             = var.storage_count
  storage_name              = var.storage_name
  storage_rg_name           = var.resource_group_name
  location                  = var.location
  accountTier               = var.accountTier
  replicationType           = var.replicationType
  enableSecureTransfer      = var.enableSecureTransfer
  allow_blob_public_access  = var.allow_blob_public_access
  tags                      = var.tags
}

module "storageAccountNetRule" {
  source                     = "../modules/storageAccountNetRule/"
  resource_group_name        = var.resource_group_name
  storage_account_name       = module.storageAccount.name[0]
  default_action             = var.default_action
  ip_rules                   = var.ip_rules
  bypass                     = var.bypass
}

module "storageContainer" {
  source                        = "../modules/storageContainer/"
  storage_container_name        = var.storage_container_name
  storage_account_name          = module.storageAccount.name[0]
  storage_container_access_type = var.storage_container_access_type
}

module "storageBlob" {
  source                    = "../modules/storageBlob/"
  storage_blob_name         = var.storage_blob_name
  storage_account_name      = module.storageAccount.name[0]
  storage_container_name    = module.storageContainer.name
  storage_blob_type         = var.storage_blob_type
  storage_blob_size         = var.storage_blob_size
}
