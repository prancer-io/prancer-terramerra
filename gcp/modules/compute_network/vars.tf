variable "net_name" {
  type = string
  default = ""
}
variable "net_description" {
  type = string
  default = ""
}
variable "auto_create_subnetworks" {
  type = bool
  default = null
}
variable "routing_mode" {
  type = string
  default = null
}
variable "project" {
  type = string
  default = null
}
variable "delete_default_routes_on_create" {
  type = string
  default = false
}
