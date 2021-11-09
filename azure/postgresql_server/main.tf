module "postgresqlServers" {
  source                       = "../modules/postgresqlServer/"
  location                     = var.location
  server_name                  = var.server_name
  server_rg                    = var.server_rg
  server_version               = var.server_version
  admin_user                   = var.admin_user
  admin_password               = var.admin_password
  auto_grow_enabled            = var.auto_grow_enabled
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  sku_name                     = var.sku_name
  ssl_enforcement_enabled      = var.ssl_enforcement_enabled
  storage_mb                   = var.storage_mb
  tags                         = var.tags
}
