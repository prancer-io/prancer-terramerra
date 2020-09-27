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

module "keyVaultSecret" {
  source                      = "../modules/keyVaultSecret/"
  keyvault_id                 = module.keyVault.vault_Id
  name                        = var.kv_secret_name
  value                       = var.kv_secret_value
  tags                        = var.tags
}
