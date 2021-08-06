variable "name" {}
variable "location" {}
variable "rg_name" {}
variable "sku" {}
variable "tags" {
  type = map
}
variable "no_public_ip" {
  type = bool
}
variable "virtual_network_id" {}
