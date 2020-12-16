location                 = "eastus2"
rg_name                  = "prancer-test-rg"
aks_name                 = "prancer-aks-cluster"
dns_prefix               = "prancer-aks"
network_policy           = "calico"
aks_node_pool_name       = "prancer"
aks_node_pool_count      = "1"
aks_vm_size              = "Standard_DS2_v2"
http_application_routing = true
aks_identity_type        = "SystemAssigned"
oms_agent                = false
tags                     = {}
