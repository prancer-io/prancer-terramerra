module "storageAccount" {
  source                    = "../modules/storageAccount/"
  storage_count             = var.storage_count
  storage_name              = var.storage_name
  storage_rg_name           = var.resource_group
  location                  = var.location
  accountTier               = var.accountTier
  replicationType           = var.replicationType
  enableSecureTransfer      = var.enableSecureTransfer
  tags                      = var.tags
}

module "storageContainer" {
  source                        = "../modules/storageContainer/"
  storage_container_name        = var.storage_container_name
  storage_account_name          = module.storageAccount.name[0]
  storage_container_access_type = var.storage_container_access_type
}

data "azurerm_client_config" "current" {}

module "sqlServer" {
  source                        = "../modules/mssqlServer/"
  location                      = var.location
  server_name                   = var.server_name
  server_rg                     = var.resource_group
  server_version                = var.server_version
  admin_user                    = var.admin_user
  admin_password                = var.admin_password
  sql_ad_username               = var.sql_ad_username
  sql_ad_object_id              = data.azurerm_client_config.current.object_id
  tags                          = var.tags
  public_network_access_enabled = true
}

module "sqlServerSecurityPolicy" {
  source                         = "../modules/mssqlServerSecurityAlertPolicy/"
  count                          = var.enable_sql_sec_policy ? 1 : 0
  sql_server_rg                  = var.resource_group
  sql_server_name                = module.sqlServer.sqlserver_name
  sql_sec_policy_state           = var.sql_sec_policy_state
  sql_sec_policy_endpoint        = module.storageAccount.primaryblob_uri[0]
  sql_sec_policy_access_key      = module.storageAccount.storage_primary_access_key[0]
  sql_sec_policy_disabled_alerts = var.disabled_alerts
  sql_sec_policy_retention       = var.sql_sec_policy_retention
  sql_sec_email_account_admins   = var.email_account_admins
  sql_sec_email_addresses        = var.email_addresses
}

module "sqlServerVulnAssess" {
  source                    = "../modules/mssqlServerVulnerabilityAssessment/"
  count                     = var.enable_sql_vuln_assessment ? 1 : 0
  sql_vuln_alert_policy_id  = module.sqlServerSecurityPolicy[0].pid
  sql_vuln_container_path   = "${module.storageAccount.primaryblob_uri[0]}${module.storageContainer.name}/"
  sql_vuln_access_key       = module.storageAccount.storage_primary_access_key[0]
  sql_vuln_scan_enabled     = var.sql_vuln_scan_enabled
  sql_vuln_scan_admin_email = var.sql_vuln_scan_admin_email
  sql_vuln_scan_emails      = var.sql_vuln_scan_emails
}

module "sqlServerFWRule" {
  source                    = "../modules/sqlServerFirewallRule/"
  count                     = var.enable_sql_firewall ? 1 : 0
  sql_fw_name               = var.sql_fw_name
  sql_fw_rg                 = var.resource_group
  sql_server_name           = module.sqlServer.sqlserver_name
  sql_fw_start_ip           = var.sql_fw_start_ip
  sql_fw_end_ip             = var.sql_fw_end_ip
}

module "sqlAuditing" {
  source                      = "../modules/mssqlAuditing/"
  count                       = var.enable_sql_auditing ? 1 : 0
  sql_server_id               = module.sqlServer.sqlserver_id
  sql_audit_endpoint          = module.storageAccount.primaryblob_uri[0]
  sql_audit_access_key        = module.storageAccount.storage_primary_access_key[0]
  sql_audit_access_key_is_2nd = var.sql_audit_access_key_is_2nd
  sql_audit_retention         = var.sql_audit_retention
}


variable "mysql_public_network_access_enabled" {
  description = "Specifies the version of MySQL to use."
  default = true
}

module "sqlDB" {
  source                      = "../modules/mssqlDB/"
  sql_db_name                 = var.sql_db_name
  sql_server_id               = module.sqlServer.sqlserver_id
  sql_db_collation            = var.sql_db_collation
  sql_db_license_type         = var.sql_db_license_type
  sql_db_max_size_gb          = var.sql_db_max_size_gb
  sql_db_read_scale           = var.sql_db_read_scale
  sql_db_sku_name             = var.sql_db_sku_name
  sql_db_zone_redundant       = var.sql_db_zone_redundant
  tags                        = var.tags
}

module "mySqlServer" {
  source                        = "../modules/mysqlServer/"
  location                      = var.location
  server_name                   = var.mysql_server_name
  server_rg                     = var.resource_group
  server_version                = var.mysql_server_version
  admin_user                    = var.admin_user
  admin_password                = var.admin_password
  tags                          = var.tags
  public_network_access_enabled = var.mysql_public_network_access_enabled
}