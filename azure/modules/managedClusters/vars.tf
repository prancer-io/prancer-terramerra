variable "aks_name" {}
variable "location" {}
variable "rg_name" {}
variable "dns_prefix" {}
variable "network_plugin" {}
variable "network_policy" {}
variable "aks_node_pool_name" {}
variable "aks_node_pool_count" {}
variable "aks_vm_size" {}
variable "aad_managed" {
  type = bool
}
variable "aad_managed_azure_rbac_enabled" {
  type = bool
}
variable "rbac_enabled" {}
variable "http_application_routing" {
  type = bool
}
variable "aks_identity_type" {}
variable "oms_agent" {
  type = bool
}
variable "log_analytics_workspace_id" {}
variable "tags" {
  type = map
}
