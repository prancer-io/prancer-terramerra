location       = "String<Specifies the Azure location inside of Europe where the resource exists. Changing this forces a new resource to be created.>"
resource_group = "prancer-test-rg"

storage_count        = 1
storage_name         = "prancerstorageaccount007"
accountTier          = "Standard"
replicationType      = "LRS"
enableSecureTransfer = false

storage_container_name        = "prancer-storage-container"
storage_container_access_type = "blob"

server_name    = "prancer-sql-server"
server_version = "12.0"
admin_user     = "prancer_admin"
admin_password = "vijcykDaHarj+Oz5"

enable_sql_sec_policy    = true
sql_sec_policy_state     = "Disabled"
disabled_alerts          = ["Unsafe_Action"]
sql_sec_policy_retention = 30
email_account_admins     = false
email_addresses          = []

enable_sql_vuln_assessment = true
sql_vuln_scan_enabled      = false
sql_vuln_scan_admin_email  = false
sql_vuln_scan_emails       = []

enable_sql_firewall = true
sql_fw_name         = "prancer-sql-fw-block-10-net"
sql_fw_start_ip     = "0.0.0.0"
sql_fw_end_ip       = "0.0.0.0"

enable_sql_auditing         = true
sql_audit_access_key_is_2nd = true
sql_audit_retention         = 30

sql_db_name           = "prancer-sql-db"
sql_db_collation      = "SQL_Latin1_General_CP1_CI_AS"
sql_db_license_type   = "LicenseIncluded"
sql_db_max_size_gb    = 2
sql_db_read_scale     = false
sql_db_sku_name       = "Basic"
sql_db_zone_redundant = false

sql_ad_username = "adadmin"

enable_sqldb_auditing         = false
sqldb_audit_access_key_is_2nd = true
sqldb_audit_retention         = 30

tags = {}
