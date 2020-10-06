variable "name" {}
variable "name_prefix" {}
variable "visibility_timeout_seconds" {}
variable "message_retention_seconds" {}
variable "max_message_size" {}
variable "delay_seconds" {}
variable "receive_wait_time_seconds" {}
variable "policy" {}
variable "redrive_policy" {}
variable "fifo_queue" {}
variable "content_based_deduplication" {}
variable "kms_master_key_id" {}
variable "kms_data_key_reuse_period_seconds" {}

variable "tags" {
  type = map
}
