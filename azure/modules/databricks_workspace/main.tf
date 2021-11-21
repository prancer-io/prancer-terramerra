resource "azurerm_databricks_workspace" "adw" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  tags                = var.tags

  custom_parameters {
    no_public_ip       = var.no_public_ip
    virtual_network_id = "String<The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.>"
  }
}
