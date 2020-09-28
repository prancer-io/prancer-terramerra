variable "ds_name" {}
variable "ds_target_resource_id" {}
variable "ds_storage_id" {}
variable "ds_eventhub_name" {
  default = null
}
variable "ds_log_category" {}
variable "ds_log_enabled" {
  default = true
}
variable "ds_log_retention_enabled" {
  default = true
}
variable "ds_log_retention_days" {
  default = 7
}
variable "ds_metric_category" {}
variable "ds_metric_enabled" {
  default = true
}
variable "ds_metric_retention_enabled" {
  default = true
}
variable "ds_metric_retention_days" {
  default = 7
}
