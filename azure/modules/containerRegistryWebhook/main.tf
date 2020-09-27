resource "azurerm_container_registry_webhook" "acrwebhook" {
  name                = var.acr_webhook_name
  resource_group_name = var.acr_webhook_rg
  registry_name       = var.acr_webhook_registry
  location            = var.location
  service_uri         = var.acr_webhook_service_uri
  status              = var.acr_webhook_status
  scope               = var.acr_webhook_scope
  actions             = var.acr_webhook_actions
  custom_headers      = var.acr_webhook_custom_headers
}
