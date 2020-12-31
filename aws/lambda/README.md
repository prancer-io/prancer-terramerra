# Terramerra: ElasticSearch

Compliance code | Filename       | Code snippet problem          | Fixed code
----------------|----------------|-------------------------------|-------------------------------------
PR-AWS-0105-TRF |terraform.tfvars|kms_key_arn = null             |kms_key_arn = "arn:..."
PR-AWS-0106-TRF |main.tf         |vpc_config = {}                |vpc_config = {\nsubnet_ids = [module.subnet.id]\nsecurity_group_ids = [module.security_group.id]\n}
PR-AWS-0107-TRF |terraform.tfvars|tracing_mode = "PassThrough"   |tracing_mode = "Active"
