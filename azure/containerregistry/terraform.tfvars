location                     = "eastus2"
resource_group               = "prancer-test-rg"

acr_name                     = "pranceracr"
acr_sku                      = "Classic"
acr_admin_enabled            = true
acr_georeplication_locations = null

acr_webhook_name             = "pranceracrhook"
acr_webhook_service_uri      = "http://mywebhookreceiver.example/mytag"
acr_webhook_status           = "enabled"
acr_webhook_scope            = "mytag:*"
acr_webhook_actions          = ["push"]
acr_webhook_custom_headers   = { "Content-Type" = "application/json" }

tags                         = {}
