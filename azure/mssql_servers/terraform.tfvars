location                    = "eastus2"
resource_group              = "prancer-test-rg"

storage_count               = 1
storage_name                = "prancerstorageaccount007"
accountTier                 = "Standard"
replicationType             = "LRS"
enableSecureTransfer        = "false"

storage_container_name        = "prancer-storage-container"
storage_container_access_type = "private"

server_name                 = "prancer-sql-server"
server_version              = "12.0"
admin_user                  = "prancer_admin"
admin_password              = "vijcykDaHarj+Oz5"

enable_sql_sec_policy          = true
sql_sec_policy_state           = "Enabled"
sql_sec_policy_disabled_alerts = []
sql_sec_policy_retention       = 7

enable_sql_vuln_assessment     = true
sql_vuln_scan_enabled          = true
sql_vuln_scan_admin_email      = true
sql_vuln_scan_emails           = ["secdevops@prancer.io"]

enable_sql_firewall = true
sql_fw_name         = "prancer-sql-fw-block-200-net"
sql_fw_start_ip     = "10.254.200.0"
sql_fw_end_ip       = "10.254.200.255"

sql_db_name                 = "prancer-sql-db"
sql_db_collation            = "SQL_Latin1_General_CP1_CI_AS"
sql_db_license_type         = "LicenseIncluded"
sql_db_max_size_gb          = 2
sql_db_read_scale           = false
sql_db_sku_name             = "Basic"
sql_db_zone_redundant       = false

sql_ad_username             = "adadmin"
sql_audit_access_key_is_2nd = true
sql_audit_retention         = "7"

tags                        = {}
