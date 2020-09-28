module "acr" {
  source                       = "../modules/containerRegistry/"
  acr_name                     = var.acr_name
  acr_rg                       = var.resource_group
  location                     = var.location
  acr_sku                      = var.acr_sku
  acr_admin_enabled            = var.acr_admin_enabled
  acr_georeplication_locations = var.acr_georeplication_locations
}

module "acrWebhook" {
  source                     = "../modules/containerRegistryWebhook/"
  acr_webhook_name           = var.acr_webhook_name
  acr_webhook_rg             = var.resource_group
  acr_webhook_registry       = module.acr.name
  location                   = var.location
  acr_webhook_service_uri    = var.acr_webhook_service_uri
  acr_webhook_status         = var.acr_webhook_status
  acr_webhook_scope          = var.acr_webhook_scope
  acr_webhook_actions        = var.acr_webhook_actions
  acr_webhook_custom_headers = var.acr_webhook_custom_headers
}
