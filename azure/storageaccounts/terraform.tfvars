resource_group_name       = "prancer-test-rg"
location                  = "eastus2"

storage_count             = 1
storage_name              = "prancerstorageaccount007"
accountTier               = "Standard"
replicationType           = "LRS"
enableSecureTransfer      = false
allow_blob_public_access  = true

default_action             = "Allow"
ip_rules                   = ["1.1.1.1"]
bypass                     = ["Metrics"]

storage_container_name        = "prancer-storage-container"
storage_container_access_type = "private"

storage_blob_name         = "prancer-storage-blob"
storage_blob_type         = "Block"
storage_blob_size         = "5120"

tags = {
    "prancer_unique_id": "7846b5c5-4f0c-420f-a797-0c82845e80dd",
    "resource_type": "azurerm_storage_account"
}
