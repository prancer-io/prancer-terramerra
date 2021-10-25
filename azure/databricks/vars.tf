variable "name" {}
variable "location" {}
variable "rg_name" {}
variable "sku" {}
variable "no_public_ip" {
  type = bool
}
variable "virtual_network_id" {}
variable "tags" {
  type = map
}
