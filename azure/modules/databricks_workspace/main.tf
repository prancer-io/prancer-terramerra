resource "azurerm_databricks_workspace" "adw" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  tags                = var.tags

  custom_parameters {
    no_public_ip = var.no_public_ip
  }
  block_type    = "custom_parameters"
  block_indexes = [1]
}
