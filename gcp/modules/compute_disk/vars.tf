variable "disk_name" {
  type = string
  default = ""
}
variable "disk_type" {
  type = string
  default = "pd-ssd"
}
variable "zone" {
  type = string
  default = ""
}
variable "disk_image" {
  type = string
  default = "debian-9-stretch-v20200805"
}
variable "disk_labels" {
  type = map
  default = {}
}
variable "physical_block_size_bytes" {
  type = number
  default = 4096
}
variable "disk_encrypted" {
  type = string
  default = false
}
variable "raw_key" {
  type = string
  default = null
}
variable "sha256" {
  type = string
  default = null
}
variable "kms_key_self_link" {
  type = string
  default = null
}
variable "kms_key_service_account" {
  type = string
  default = null
}
