resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.aks_node_pool_name
    node_count = var.aks_node_pool_count
    vm_size    = var.aks_vm_size
  }

  identity {
    type = var.aks_identity_type
  }

  tags = var.tags
}
