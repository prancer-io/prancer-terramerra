resource "azurerm_sql_active_directory_administrator" "sqladadmin" {
  server_name         = var.server_name
  resource_group_name = var.server_rg
  login               = var.sql_server_login
  tenant_id           = var.azure_tenant_id
  object_id           = var.ad_object_id
}
