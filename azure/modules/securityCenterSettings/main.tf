resource "azurerm_security_center_setting" "security_center_setting" {
  setting_name = var.settings_name
  enabled      = var.settings_enabled
}