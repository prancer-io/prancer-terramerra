# Terramerra: RDS

Compliance code | Filename       | Code snippet problem             | Fixed code
----------------|----------------|----------------------------------|----------------------------------
PR-AWS-0119-TRF |terraform.tfvars|cluster_storage_encrypted = false |cluster_storage_encrypted = true
=               |                |cluster_kms_key_id = null         |cluster_kms_key_id = "arn:..."
PR-AWS-0121-TRF |terraform.tfvars|publicly_accessible = true        |publicly_accessible = false
PR-AWS-0125-TRF |terraform.tfvars|storage_encrypted = false         |storage_encrypted = true
=               |                |kms_key_id = null                 |kms_key_id = "arn:..."
PR-AWS-0127-TRF |terraform.tfvars|multi_az = false                  |multi_az = true
PR-AWS-0128-TRF |terraform.tfvars|copy_tags_to_snapshot = false     |copy_tags_to_snapshot = true
PR-AWS-0129-TRF |terraform.tfvars|backup_retention_period = 0       |backup_retention_period = 8
PR-AWS-0130-TRF |terraform.tfvars|auto_minor_version_upgrade = false|auto_minor_version_upgrade = true
PR-AWS-0131-TRF |terraform.tfvars|backup_retention_period = 0       |backup_retention_period = 8
