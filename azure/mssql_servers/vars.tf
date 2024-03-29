variable "location" {}
variable "resource_group" {}

variable "storage_count" {}
variable "storage_name" {}
variable "accountTier" {}
variable "replicationType" {}
variable "enableSecureTransfer" {}

variable "storage_container_name" {}
variable "storage_container_access_type" {}

variable "sql_db_name" {}
variable "sql_db_collation" {}
variable "sql_db_license_type" {}
variable "sql_db_max_size_gb" {}
variable "sql_db_read_scale" {}
variable "sql_db_sku_name" {}
variable "sql_db_zone_redundant" {}

variable "enable_sql_sec_policy" {
  default = false
}
variable "sql_sec_policy_state" {}
variable "disabled_alerts" {}
variable "sql_sec_policy_retention" {}
variable "email_account_admins" {}
variable "email_addresses" {}

variable "enable_sql_vuln_assessment" {
  default = false
}
variable "sql_vuln_scan_enabled" {}
variable "sql_vuln_scan_admin_email" {}
variable "sql_vuln_scan_emails" {}

variable "enable_sql_firewall" {
  default = false 
}
variable "sql_fw_name" {}
variable "sql_fw_start_ip" {}
variable "sql_fw_end_ip" {}

variable "enable_sql_auditing" {}
variable "sql_audit_access_key_is_2nd" {}
variable "sql_audit_retention" {}

variable "server_name" {}
variable "server_version" {}
variable "admin_user" {}
variable "admin_password" {}
variable "sql_ad_username" {}

variable "enable_sqldb_auditing" {}
variable "sqldb_audit_access_key_is_2nd" {}
variable "sqldb_audit_retention" {}

variable "tags" {}

variable "mysql_server_name" {

}

variable "mysql_server_version" {
  default = "8.0"
}

variable "mysql_public_network_access_enabled" {
  default = true
}
