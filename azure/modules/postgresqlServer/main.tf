resource "azurerm_postgresql_server" "postgresqlserver" {
  name                = var.server_name
  resource_group_name = var.server_rg
  location            = var.location

  version                       = var.server_version
  administrator_login           = var.admin_user
  administrator_login_password  = var.admin_password
  auto_grow_enabled             = var.auto_grow_enabled
  backup_retention_days         = var.backup_retention_days
  geo_redundant_backup_enabled  = var.geo_redundant_backup_enabled
  sku_name                      = var.sku_name
  ssl_enforcement_enabled       = var.ssl_enforcement_enabled
  storage_mb                    = var.storage_mb
  tags                          = var.tags
  public_network_access_enabled = false
}
