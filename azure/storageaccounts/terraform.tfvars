resource_group_name       = "prancer-test-rg"
location                  = "eastus2"

storage_count             = 1
storage_name              = "prancerstorageaccount007"
accountTier               = "Standard"
replicationType           = "LRS"
enableSecureTransfer      = "false"

storage_container_name        = "prancer-storage-container"
storage_container_access_type = "private"

storage_blob_name         = "prancer-storage-blob"
storage_blob_type         = "Block"
storage_blob_size         = "5120"

tags = {}
