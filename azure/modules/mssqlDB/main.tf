resource "azurerm_mssql_database" "mssqldb" {
  name               = var.sql_db_name
  server_id          = var.sql_server_id
  collation          = var.sql_db_collation
  license_type       = var.sql_db_license_type
  max_size_gb        = var.sql_db_max_size_gb
  read_scale         = var.sql_db_read_scale
  sku_name           = var.sql_db_sku_name
  zone_redundant     = var.sql_db_zone_redundant
  tags               = var.tags

  threat_detection_policy {
    state                      = var.sql_db_threat_state
    email_account_admins       = var.sql_db_threat_admin_mail
    retention_days             = var.sql_db_threat_retention
    storage_account_access_key = var.sql_db_threat_access_key
    storage_endpoint           = var.sql_db_threat_endpoint
    use_server_default         = var.sql_db_threat_server_default
  }
}
