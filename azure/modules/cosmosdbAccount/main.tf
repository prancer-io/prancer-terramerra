resource "azurerm_cosmosdb_account" "example" {
  name                = "${var.prefix}-cosmosdb"
  location            = var.location
  resource_group_name = var.rg_name
  offer_type          = var.offer_type
  kind                = var.kind

  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }

  geo_location {
    prefix            = "${var.prefix}-customid"
    location          = var.location
    failover_priority = var.failover_priority
  }

  tags = var.tags
}
