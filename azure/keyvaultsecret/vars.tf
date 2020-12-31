variable "location" {}
variable "resource_group" {}

variable "storage_count" {}
variable "storage_name" {}
variable "accountTier" {}
variable "replicationType" {}
variable "enableSecureTransfer" {}

variable "kv_name" {}
variable "kv_sku" {}

variable "kv_secret_name" {}
variable "kv_secret_value" {}
variable "expiration_date" {}

variable "tags" {
  type = map
}
