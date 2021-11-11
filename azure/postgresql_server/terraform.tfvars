location                     = "eastus2"
server_name                  = "prancer-sql-server2"
server_rg                    = "prancer-test-rg"
server_version               = "12.0"
admin_user                   = "prancer_admin"
admin_password               = "vijcykDaHarj+Oz5"

auto_grow_enabled            = true
backup_retention_days        = 7
geo_redundant_backup_enabled = false
sku_name                     = "GP_Gen5_2"
ssl_enforcement_enabled      = false
storage_mb                   = 51200

tags             = {}
