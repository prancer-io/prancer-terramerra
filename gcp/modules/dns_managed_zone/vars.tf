variable "dns_zone" {
  type = string
  default = ""
}
variable "dns_name" {
  type = string
  default = ""
}
variable "dns_description" {
  type = string
  default = ""
}
variable "dns_labels" {
  type = map
  default = {}
}
variable "dnssec" {
  type = list
  default = []
}
variable "dnssec_keys" {
  type = list
  default = []
}
