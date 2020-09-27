location                     = "eastus2"
resource_group               = "prancer-test-rg"

acr_name                     = "pranceracr"
acr_sku                      = "Standard"
acr_admin_enabled            = false
acr_georeplication_locations = null

acr_webhook_name             = "pranceracrhook"
acr_webhook_service_uri      = "https://mywebhookreceiver.example/mytag"
acr_webhook_status           = "enabled"
acr_webhook_scope            = "mytag:*"
acr_webhook_actions          = ["push"]
acr_webhook_custom_headers   = { "Content-Type" = "application/json" }

tags                         = {}
