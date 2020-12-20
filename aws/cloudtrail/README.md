# Terramerra: Cloudtrail

Compliance code | Filename       | Code snippet problem             | Fixed code
----------------|----------------|----------------------------------|---------------------------------
PR-AWS-0026-TRF |terraform.tfvars|is_multi_region_trail = false     |is_multi_region_trail = true
PR-AWS-0027-TRF |terraform.tfvars|enable_log_file_validation = false|enable_log_file_validation = true
PR-AWS-0028-TRF |terraform.tfvars|kms_key_arn = ""                  |kms_key_arn = <KMS key ARM>
PR-AWS-0192-TRF |terraform.tfvars|cloud_watch_logs_role_arn = ""    |cloud_watch_logs_role_arn = <CWL ARN>
