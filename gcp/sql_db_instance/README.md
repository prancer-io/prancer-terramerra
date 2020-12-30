# Terramerra: Container Cluster

Compliance code | Filename       | Code snippet problem           | Fixed code
----------------|----------------|--------------------------------|-----------------------------------
PR-GCP-0062-TRF |terraform.tfvars|db_labels = {}                  |db_labels = {type = "mysql"}
PR-GCP-0063-TRF |terraform.tfvars|db_backup = [{binary_log_enabled = false}]|db_backup = [{binary_log_enabled = true}]
PR-GCP-0064-TRF |terraform.tfvars|db_backup = [{enabled = false}] |db_backup = [{enabled = true}]
PR-GCP-0066-TRF |terraform.tfvars|db_ipconf = [{require_ssl  = false}]|db_ipconf = [{require_ssl  = true}]
PR-GCP-0067-TRF |terraform.tfvars|db_ipconf = [{authorized_networks = ["0.0.0.0/0"]}]|db_ipconf = [{authorized_networks = ["10.0.10.0/0"]}]
