resource "azurerm_mssql_server_security_alert_policy" "mssqlsecuritypolicy" {
  resource_group_name        = var.sql_server_rg
  server_name                = var.sql_server_name
  state                      = var.sql_sec_policy_state
  storage_endpoint           = var.sql_sec_policy_endpoint
  storage_account_access_key = var.sql_sec_policy_access_key
  disabled_alerts            = var.sql_sec_policy_disabled_alerts
  retention_days             = var.sql_sec_policy_retention
  email_account_admins       = var.sql_sec_email_account_admins
  email_addresses            = var.sql_sec_email_addresses
}
