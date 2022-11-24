variable "vm_name" {
  type = string
  default = ""
}
variable "machine_type" {
  type = string
  default = "f1-micro"
}
variable "zone" {
  type = string
  default = null
}
variable "vm_tags" {
  type = list
  default = []
}
variable "vm_image" {
  type = string
  default = "debian-cloud/debian-9"
}
variable "scheduling_enabled" {
  type = bool
  default = false
}
variable "scheduling_preemptible" {
  type = bool
  default = false
}
variable "scheduling_on_host_maintenance" {
  type = string
  default = null
}
variable "scheduling_automatic_restart" {
  type = bool
  default = false
}
variable "network" {
  type = string
  default = "default"
}
variable "subnetwork" {
  type = string
  default = null
}
variable "vm_access_config" {
  type = map
  default = {}
}
variable "enable_secure_boot" {
  type = bool
  default = false
}
variable "email" {
  type = string
  default = ""
}
variable "scopes" {
  type = string
  default = ""
}
variable "can_ip_forward" {
  type = bool
  default = false
}
variable "vm_metadata" {
  type = map
  default = {}
}
variable "metadata_startup_script" {
  type = string
  default = ""
}
variable "labels" {
  type = map
  default = {}
}
