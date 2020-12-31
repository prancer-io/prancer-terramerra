module "aks" {
  source                     = "../modules/managedClusters/"
  location                   = var.location
  rg_name                    = var.rg_name
  aks_name                   = var.aks_name
  dns_prefix                 = var.dns_prefix
  network_plugin             = var.network_plugin
  network_policy             = var.network_policy
  aks_node_pool_name         = var.aks_node_pool_name
  aks_node_pool_count        = var.aks_node_pool_count
  aks_vm_size                = var.aks_vm_size
  rbac_enabled               = var.rbac_enabled
  http_application_routing   = var.http_application_routing
  aks_identity_type          = var.aks_identity_type
  oms_agent                  = var.oms_agent
  log_analytics_workspace_id = var.log_analytics_workspace_id
  tags                       = var.tags
}
