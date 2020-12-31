resource "azurerm_mssql_database_extended_auditing_policy" "mssqldbaudit" {
  database_id                             = var.sqldb_database_id
  storage_endpoint                        = var.sqldb_audit_endpoint
  storage_account_access_key              = var.sqldb_audit_access_key
  storage_account_access_key_is_secondary = var.sqldb_audit_access_key_is_2nd
  retention_in_days                       = var.sqldb_audit_retention
}
