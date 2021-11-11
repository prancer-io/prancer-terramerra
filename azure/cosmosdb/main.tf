module "cosmosdb_account" {
  source                      = "../modules/cosmosdbAccount/"
  prefix                      = var.prefix
  location                    = var.location
  rg_name                     = var.resource_group
  offer_type                  = var.offer_type
  kind                        = var.kind
  consistency_level           = var.consistency_level
  max_interval_in_seconds     = var.max_interval_in_seconds
  max_staleness_prefix        = var.max_staleness_prefix
  failover_priority           = var.failover_priority
  tags                        = var.tags
}
