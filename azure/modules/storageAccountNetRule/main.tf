resource "azurerm_storage_account_network_rules" "SANetRule" {
  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name

  default_action             = var.default_action
  ip_rules                   = var.ip_rules
  bypass                     = var.bypass
}
