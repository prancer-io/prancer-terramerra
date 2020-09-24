resource "azurerm_sql_server" "sqlserver" {
  name                         = var.server_name
  resource_group_name          = var.server_rg
  location                     = var.location

  version                      = var.server_version
  administrator_login          = var.admin_user
  administrator_login_password = var.admin_password

  tags                         = var.tags
}
