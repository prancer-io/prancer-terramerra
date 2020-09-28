variable "location" {}
variable "resource_group" {}
variable "peer1_address_space" {}
variable "peer1_dns_server" {}
variable "peer2_address_space" {}
variable "peer2_dns_server" {}
variable "peer1_vnet" {}
variable "peer2_vnet" {}
variable "peering_name" {}
variable "allow_virtual_network_access1" {}
variable "allow_forwarded_traffic1" {}
variable "allow_gateway_transit1" {}
variable "allow_virtual_network_access2" {}
variable "allow_forwarded_traffic2" {}
variable "allow_gateway_transit2" {}
variable "tags" {
  type = map
}
