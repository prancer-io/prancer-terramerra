resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  network_profile {
    network_plugin = var.network_plugin
    network_policy = var.network_policy
  }

  default_node_pool {
    name       = var.aks_node_pool_name
    node_count = var.aks_node_pool_count
    vm_size    = var.aks_vm_size
  }

  role_based_access_control {
    azure_active_directory {
      managed            = var.aad_managed
      azure_rbac_enabled = var.aad_managed_azure_rbac_enabled
    }
    enabled = var.rbac_enabled
  }

  addon_profile {
    http_application_routing {
      enabled = var.http_application_routing
    }

    oms_agent {
      enabled                    = var.oms_agent
      log_analytics_workspace_id = var.log_analytics_workspace_id
    }

    kube_dashboard {
      enabled = true
    }
  }

  identity {
    type = var.aks_identity_type
  }

  tags          = var.tags
  block_type    = "addon_profile"
  block_indexes = [1]
}
