# Terramerra: Redshift

Compliance code | Filename       | Code snippet problem             | Fixed code
----------------|----------------|----------------------------------|----------------------------------
PR-AWS-0133-TRF |terraform.tfvars|encrypted = false                 |encrypted = true
=               |                |kms_key_id = ""                   |kms_key_id = "arn:..."
PR-AWS-0134-TRF |terraform.tfvars|publicly_accessible = true        |publicly_accessible = false
PR-AWS-0135-TRF |terraform.tfvars|enable_logging = false            |enable_logging = true
=               |                |logging_bucket_name = null        |logging_bucket_name = s3bucketname
PR-AWS-0136-TRF |terraform.tfvars|parameter_map = {require_ssl = "false"}|parameter_map = {require_ssl = "true"}
PR-AWS-0137-TRF |terraform.tfvars|encrypted = false                 |encrypted = true
=               |                |kms_key_id = ""                   |kms_key_id = "arn:..."
