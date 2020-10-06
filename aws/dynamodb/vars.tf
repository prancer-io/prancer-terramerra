variable "name" {}
variable "enabled" {}
variable "billing_mode" {}
variable "enable_streams" {}
variable "enable_encryption" {}
variable "hash_key" {}
variable "range_key" {}
variable "dynamodb_attributes" {}
variable "local_secondary_index_map" {}
variable "global_secondary_index_map" {}
variable "tags" {
  type = map
}
