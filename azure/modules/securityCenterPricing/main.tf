resource "azurerm_security_center_subscription_pricing" "pricing" {
  tier = var.subscription_pricing_tier
}
