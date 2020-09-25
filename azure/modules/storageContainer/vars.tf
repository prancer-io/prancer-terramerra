variable "storage_container_name" {
  description = "The name of the resource group in which to create the storage container."
}

variable "storage_account_name" {
  description = "Specifies the storage account in which to create the storage container."
}

variable "storage_container_access_type" {
  description = "The interface for access the container provides. Can be either blob, container or private."
  default     = "private"
}
