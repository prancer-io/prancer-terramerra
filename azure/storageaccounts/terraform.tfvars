resource_group_name = "prancer-test-rg"
location            = "String<Specifies the Azure location inside of Europe where the resource exists. Changing this forces a new resource to be created.>"

storage_count            = 1
storage_name             = "prancerstorageaccount007"
accountTier              = "Standard"
replicationType          = "LRS"
enableSecureTransfer     = false
allow_blob_public_access = true

default_action = "Allow"
ip_rules       = ["1.1.1.1"]
bypass         = ["Metrics"]

storage_container_name        = "prancer-storage-container"
storage_container_access_type = "private"

storage_blob_name = "prancer-storage-blob"
storage_blob_type = "Block"
storage_blob_size = "5120"

tags = {}
