resource "azurerm_key_vault_secret" "keysecret" {
  name         = var.name
  value        = var.value
  key_vault_id = var.keyvault_id

  tags = var.tags
}
