# Terramerra: SQS

Compliance code | Filename       | Code snippet problem              | Fixed code
----------------|----------------|-----------------------------------|---------------------------------
PR-AWS-0155-TRF |terraform.tfvars|redrive_policy = ""                |redrive_policy = JSON policy
PR-AWS-0156-TRF |terraform.tfvars|kms_master_key_id = null           |kms_master_key_id = "arn:..."
PR-AWS-0157-TRF |terraform.tfvars|kms_master_key_id = null           |kms_master_key_id = "arn:..."
