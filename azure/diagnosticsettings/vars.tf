variable "location" {}
variable "resource_group" {}

variable "storage_count" {}
variable "storage_name" {}
variable "accountTier" {}
variable "replicationType" {}
variable "enableSecureTransfer" {}

variable "kv_name" {}
variable "kv_sku" {}

variable "ds_name" {}
variable "ds_log_category" {}
variable "ds_log_enabled" {}
variable "ds_log_retention_enabled" {}
variable "ds_log_retention_days" {}
variable "ds_metric_category" {}
variable "ds_metric_enabled" {}
variable "ds_metric_retention_enabled" {}
variable "ds_metric_retention_days" {}

variable "tags" {
  type = map
}
