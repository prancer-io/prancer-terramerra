# Terramerra: Storage Account

Compliance code | Filename       | Code snippet problem          | Fixed code
----------------|----------------|-------------------------------|---------------------------------
PR-AZR-0092-TRF |terraform.tfvars|enableSecureTransfer = false   |enableSecureTransfer = true
PR-AZR-0093-TRF |terraform.tfvars|default_action = "Allow"       |default_action = "Deny"
PR-AZR-0074-TRF |terraform.tfvars|allow_blob_public_access = true|allow_blob_public_access = false
PR-AZR-0013-TRF |terraform.tfvars|allow_blob_public_access = true|allow_blob_public_access = false
