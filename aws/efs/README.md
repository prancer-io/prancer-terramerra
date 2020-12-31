# Terramerra: EFS

Compliance code | Filename       | Code snippet problem | Fixed code
----------------|----------------|----------------------|---------------------------------------
PR-AWS-0060-TRF |terraform.tfvars|encrypted = false     |encrypted = false
=               |                |kms_key_id = null     |kms_key_id = "arn:..."
PR-AWS-0061-TRF |terraform.tfvars|encrypted = false     |encrypted = false
