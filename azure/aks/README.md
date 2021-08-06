# Terramerra: AKS

Compliance code | Filename       | Code snippet problem            | Fixed code
----------------|----------------|---------------------------------|---------------------------------
PR-AZR-0006-TRF |terraform.tfvars|network_policy = "calico"        |network_policy = "azure"
                |                |network_plugin = "kubenet"       |network_plugin = "azure"
PR-AZR-0007-TRF |terraform.tfvars|http_application_routing = true  |http_application_routing = false
PR-AZR-0008-TRF |terraform.tfvars|oms_agent = false                |oms_agent = true
                |                |log_analytics_workspace_id = null|log_analytics_workspace_id = ID
PR-AZR-0009-TRF |terraform.tfvars|aks_node_pool_count = 1          |aks_node_pool_count = 3
PR-AZR-0010-TRF |terraform.tfvars|rbac_enabled = false             |rbac_enabled = true
PR-AZR-0010-TRF |terraform.tfvars|                                 |aad_managed = true
PR-AZR-0068-TRF |terraform.tfvars|                                 |aad_managed_azure_rbac_enabled = true

