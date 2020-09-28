variable "location" {}
variable "vnet_name" {}
variable "resource_group" {}
variable "address_space" {}
variable "dns_server" {}
variable "subnet_names" {
  type = list
}
variable "address_prefixes" {
  type = list
}
variable "subnet_nsg" {
  type = list
  default = []
}
variable "tags" {}
