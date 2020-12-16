variable "aks_name" {}
variable "location" {}
variable "rg_name" {}
variable "dns_prefix" {}
variable "network_policy" {}
variable "aks_node_pool_name" {}
variable "aks_node_pool_count" {}
variable "aks_vm_size" {}
variable "http_application_routing" {
  type = bool
}
variable "aks_identity_type" {}
variable "oms_agent" {
  type = bool
}
variable "tags" {
  type = map
}
