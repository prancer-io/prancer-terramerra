module "sqlServers" {
  source                    = "../modules/sqlServer/"
  location                  = var.location
  server_name               = var.server_name
  server_rg                 = var.server_rg
  server_version            = var.server_version
  admin_user                = var.admin_user
  admin_password            = var.admin_password
  tags                      = var.tags
}

data "azurerm_client_config" "current" {}

module "sqlServerFWRule" {
  source                    = "../modules/sqlServerFirewallRule/"
  count                     = var.enable_sql_firewall ? 1 : 0
  sql_fw_name               = var.sql_fw_name
  sql_fw_rg                 = var.server_rg
  sql_server_name           = module.sqlServers.sqlserver_name
  sql_fw_start_ip           = var.sql_fw_start_ip
  sql_fw_end_ip             = var.sql_fw_end_ip
}

module "sqlADAdmin" {
  source                    = "../modules/sqlADAdministrator/"
  location                  = var.location
  server_name               = var.server_name
  server_rg                 = var.server_rg
  sql_server_login          = "sqladmin"
  azure_tenant_id           = data.azurerm_client_config.current.tenant_id
  ad_object_id              = data.azurerm_client_config.current.object_id
}
