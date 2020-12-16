resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix
  network_policy      = var.network_policy

  default_node_pool {
    name       = var.aks_node_pool_name
    node_count = var.aks_node_pool_count
    vm_size    = var.aks_vm_size
  }

  http_application_routing {
    enabled = var.http_application_routing
  }

  identity {
    type = var.aks_identity_type
  }

  oms_agent {
    enabled = var.oms_agent
  }

  tags = var.tags
}
