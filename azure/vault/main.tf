data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_key_vault" "example" {
  name                       = ""
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "premium"
  soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
  }
  block_type    = "access_policy"
  block_indexes = [1]
}

resource "azurerm_key_vault_secret" "example" {
  name         = "secret-sauce"
  value        = "UyVc_EG&ZPn=3m6%"
  key_vault_id = azurerm_key_vault.example.id
}