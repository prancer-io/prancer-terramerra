variable "storage_blob_name" {
  description = "The name of the storage blob."
}

variable "storage_account_name" {
  description = "Specifies the storage account in which to create the storage container."
}

variable "storage_container_name" {
  description = "The name of the storage container in which this blob should be created."
}

variable "storage_blob_type" {
  description = "The type of the storage blob to be created. One of either block or page."
  default     = "page"
}

variable "storage_blob_size" {
  description = "Used only for page blobs to specify the size in bytes of the blob to be created."
  default     = "5120"
}
