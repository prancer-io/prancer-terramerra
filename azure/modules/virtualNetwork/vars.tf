variable "location" {
  description = "The location/region where resource will be created. Changing this forces a new resource to be created."
}

variable "vnet_name" {
  description = "Custom name provided to the vnet."
}

variable "vnet_rg" {
  description = "The resource group where resource will be created."
}

variable "address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
}

variable "dns_server" {
  description = "List of IP addresses of DNS servers."
}

variable tags {
  type = map
}
