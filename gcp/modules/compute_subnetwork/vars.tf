variable "subnet_name" {
  type = string
  default = ""
}
variable "ip_cidr_range" {
  type = string
  default = ""
}
variable "location" {
  type = string
  default = ""
}
variable "network_id" {
  type = string
  default = null
}
variable "log_enabled" {
  type = bool
  default = false
}
variable "log_aggregation_interval" {
  type = string
  default = ""
}
variable "log_flow_sampling" {
  type = string
  default = ""
}
variable "log_metadata" {
  type = string
  default = ""
}
variable "private_ip_google_access" {
  type = string
  default = ""
}
