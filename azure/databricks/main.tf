module "adw" {
  source                          = "../modules/databricks_workspace/"
  location                        = var.location
  rg_name                         = var.rg_name
  name                            = var.name
  sku                             = var.sku
  tags                            = var.tags
  no_public_ip                    = var.no_public_ip
  virtual_network_id              = var.virtual_network_id
}
