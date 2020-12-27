# Terramerra: Security Group

Compliance code | Filename       | Code snippet problem              | Fixed code
----------------|----------------|-----------------------------------|---------------------------------
PR-AWS-0152-TRF |terraform.tfvars|protocol = "http"                  |protocol = "https"
PR-AWS-0153-TRF |terraform.tfvars|kms_master_key_id = null           |kms_master_key_id = "arn:..."
PR-AWS-0154-TRF |terraform.tfvars|protocol = "http"                  |protocol = "https"
