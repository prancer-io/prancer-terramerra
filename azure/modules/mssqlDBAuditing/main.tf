resource "azurerm_mssql_database_extended_auditing_policy" "mssqldbaudit" {
  database_id                             = var.sql_server_id
  storage_endpoint                        = var.sql_audit_endpoint
  storage_account_access_key              = var.sql_audit_access_key
  storage_account_access_key_is_secondary = var.sql_audit_access_key_is_2nd
  retention_in_days                       = var.sql_audit_retention
}
