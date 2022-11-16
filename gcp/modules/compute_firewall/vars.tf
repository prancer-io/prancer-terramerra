variable "fw_name" {
  type = string
  default = ""
}
variable "fw_network_id" {
  type = string
  default = null
}
variable "fw_direction" {
  type = string
  default = "INGRESS"
}
variable "fw_allows" {
  type = list
  default = []
}
variable "fw_source_ranges" {
  type = list
  default = []
}
variable "fw_source_tags" {
  type = list
  default = []
}
