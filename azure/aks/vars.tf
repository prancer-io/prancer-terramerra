variable "aks_name" {}
variable "location" {}
variable "rg_name" {}
variable "dns_prefix" {}
variable "network_plugin" {}
variable "network_policy" {}
variable "aks_node_pool_name" {}
variable "aks_node_pool_count" {}
variable "aks_vm_size" {}
variable "rbac_enabled" {}
variable "http_application_routing" {}
variable "aks_identity_type" {}
variable "oms_agent" {}
variable "log_analytics_workspace_id" {}
variable "tags" {
  type = map
}
