location       = "eastus2"
resource_group = "prancer-test-rg"

storage_count        = 1
storage_name         = "prancerstorageaccount007"
accountTier          = "Standard"
replicationType      = "LRS"
enableSecureTransfer = false

kv_name = "prancer-key-vault-t3st"
kv_sku  = "standard"

kv_secret_name  = "prancer-secret"
kv_secret_value = "53cr3t"
expiration_date = "String<Expiration UTC datetime (Y-m-d'T'H:M:S'Z')>"

tags = {}
