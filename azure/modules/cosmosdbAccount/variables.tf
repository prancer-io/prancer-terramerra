variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "rg_name" {}
variable "offer_type" {}
variable "kind" {}
variable "consistency_level" {}
variable "max_interval_in_seconds" {}
variable "max_staleness_prefix" {}
variable "failover_priority" {}

variable "tags" {}