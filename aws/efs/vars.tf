variable "encrypted" {}
variable "kms_key_id" {}
variable "performance_mode" {}
variable "provisioned_throughput_in_mibps" {}
variable "throughput_mode" {}
variable "transition_to_ia" {}

variable "tags" {
  type = map
}
