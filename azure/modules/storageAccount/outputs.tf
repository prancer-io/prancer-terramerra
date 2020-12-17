output "primaryblob_uri" {
  value = azurerm_storage_account.storageAccount.*.primary_blob_endpoint
}

output "storage_id" {
  value = azurerm_storage_account.storageAccount.*.id
}

output "name" {
  value = azurerm_storage_account.storageAccount.*.name
}

output "storage_primaryLocation" {
  value = azurerm_storage_account.storageAccount.*.primary_location
}

output "storage_primary_access_key" {
  value = azurerm_storage_account.storageAccount.*.primary_access_key
}

output "storage_primary_connection_string" {
  value = azurerm_storage_account.storageAccount.*.primary_connection_string
}
