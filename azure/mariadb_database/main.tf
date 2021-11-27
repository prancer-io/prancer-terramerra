resource "azurerm_resource_group" "example" {
  name     = "tfex-mariadb-database-RG"
  location = "West Europe"
}

resource "azurerm_mariadb_server" "example" {
  name                = "mariadb-svr"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 51200
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  administrator_login          = "acctestun"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "10.2"
  ssl_enforcement_enabled      = false
  public_network_access_enabled = true
}

resource "azurerm_mariadb_database" "example" {
  name                = "mariadb_database"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_mariadb_server.example.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}