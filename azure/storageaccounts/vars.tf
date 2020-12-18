variable "resource_group_name" {
  description = "The name of the resource group in which to create the SQL Server."
}

variable "location" {
  description = "The location/region where resource will be created. Changing this forces a new resource to be created."
}

variable "storage_count" {
  description = "count"
}

variable "storage_name" {
  description = "name"
}

variable "accountTier" {
  description = "Account tier for the storage account"
}

variable "replicationType" {
  description = "Replication type"
}

variable "enableSecureTransfer" {
  description = "Enable Secure Transfer"
}
variable "allow_blob_public_access" {}

variable "default_action" {}
variable "ip_rules" {}
variable "bypass" {}

variable "storage_container_name" {}
variable "storage_container_access_type" {}

variable "storage_blob_name" {}
variable "storage_blob_type" {}
variable "storage_blob_size" {}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
