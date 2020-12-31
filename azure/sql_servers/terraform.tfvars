location         = "eastus2"
server_name      = "prancer-sql-server2"
server_rg        = "prancer-test-rg"
server_version   = "12.0"
admin_user       = "prancer_admin"
admin_password   = "vijcykDaHarj+Oz5"

enable_ad_admin  = false
sql_server_login = "sqladmin"

enable_sql_firewall = true
sql_fw_name         = "prancer-sql-fw-block-200-net"
sql_fw_start_ip     = "10.254.200.0"
sql_fw_end_ip       = "10.254.200.255"

tags             = {}
