variable "aks_name" {}
variable "location" {}
variable "rg_name" {}
variable "dns_prefix" {}
variable "aks_node_pool_name" {}
variable "aks_node_pool_count" {}
variable "aks_vm_size" {}
variable "aks_identity_type" {}
variable "tags" {
  type = map
}
