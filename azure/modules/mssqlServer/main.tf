resource "azurerm_mssql_server" "mssqlserver" {
  name                = var.server_name
  resource_group_name = var.server_rg
  location            = var.location

  version                       = var.server_version
  administrator_login           = var.admin_user
  administrator_login_password  = var.admin_password
  public_network_access_enabled = var.public_network_access_enabled

  azuread_administrator {
    login_username = var.sql_ad_username
    object_id      = var.sql_ad_object_id
  }

  tags            = var.tags
  min_tls_version = 1.2
}
