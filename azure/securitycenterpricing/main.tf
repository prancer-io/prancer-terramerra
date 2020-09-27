module "pricing" {
  source                        = "../modules/securityCenterPricing/"
  subscription_pricing_tier     = var.subscription_pricing_tier
}
