resource "azurerm_sql_firewall_rule" "sqlserverfw" {
  name                = var.sql_fw_name
  resource_group_name = var.sql_fw_rg
  server_name         = var.sql_server_name
  start_ip_address    = var.sql_fw_start_ip
  end_ip_address      = var.sql_fw_end_ip
}
