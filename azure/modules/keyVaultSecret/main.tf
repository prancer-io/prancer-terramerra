resource "azurerm_key_vault_secret" "keysecret" {
  name            = var.name
  value           = var.value
  key_vault_id    = var.keyvault_id
  expiration_date = var.expiration_date

  tags = var.tags
}
