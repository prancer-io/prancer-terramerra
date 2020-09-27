output "vault_Id" {
  value = "${azurerm_key_vault.keyvault.id}"
}

output "name" {
  value = "${azurerm_key_vault.keyvault.name}"
}

output "vault_URI" {
  value = "${azurerm_key_vault.keyvault.vault_uri}"
}
