module "aks" {
  source                = "../modules/managedClusters/"
  location              = var.location
  rg_name               = var.rg_name
  aks_name              = var.aks_name
  dns_prefix            = var.dns_prefix
  aks_node_pool_name    = var.aks_node_pool_name
  aks_node_pool_count   = var.aks_node_pool_count
  aks_vm_size           = var.aks_vm_size
  aks_identity_type     = var.aks_identity_type
  tags                  = var.tags
}
