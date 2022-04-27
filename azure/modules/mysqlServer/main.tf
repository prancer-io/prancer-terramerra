resource "azurerm_mysql_server" "mysqlserver" {
  name                = var.server_name
  resource_group_name = var.server_rg
  location            = var.location

  administrator_login          = var.admin_user
  administrator_login_password = var.admin_password

  sku_name   = "GP_Gen5_8"
  storage_mb = 5120
  version    = var.server_version

  public_network_access_enabled = var.public_network_access_enabled
  ssl_enforcement_enabled       = true

  tags = var.tags
}