variable "name" {
  description = "IP name"
}
variable "location" {
  description = "location"
  default     = "eastus2"
}
variable "resource_group" {
  description = "resource group name"
}
variable "type" {
  description = "allocation type"
  default = "dynamic"
}
variable "sku" {
  description = "sku"
  default = "Standard"
}
variable "ip_version" {
  description = "ip_version"
  default = "IPv4"
}
variable tags {
  type = map
}
