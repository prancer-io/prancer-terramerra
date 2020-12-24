# Terramerra: ElasticSearch

Compliance code | Filename       | Code snippet problem          | Fixed code
----------------|----------------|-------------------------------|-------------------------------------
PR-AWS-0074-TRF |terraform.tfvars|subnet_ids = []                |subnet_ids = [subnet1_id, subnet2_id]
PR-AWS-0076-TRF |terraform.tfvars|encrypt_at_rest_enabled = false|encrypt_at_rest_enabled = true
=               |                |encrypt_at_rest_kms_key_id = ""|encrypt_at_rest_kms_key_id = kms_key_id
PR-AWS-0077-TRF |terraform.tfvars|dedicated_master_enabled = false|dedicated_master_enabled = true
PR-AWS-0078-TRF |terraform.tfvars|log_publishing_index_enabled = false|log_publishing_index_enabled = true
=               |                |log_publishing_index_cloudwatch_log_group_arn = ""|log_publishing_index_cloudwatch_log_group_arn = "arn:aws:logs:..."
PR-AWS-0079-TRF |terraform.tfvars|log_publishing_search_enabled = false|log_publishing_search_enabled = true
=               |                |log_publishing_search_cloudwatch_log_group_arn = ""|log_publishing_search_cloudwatch_log_group_arn = "arn:aws:logs:..."
PR-AWS-0080-TRF |terraform.tfvars|zone_awareness_enabled = false|zone_awareness_enabled = true
