variable "storage_count" {
  description = "count"
}

variable "storage_name" {
  description = "name"
}

variable "location" {
  description = "location"
}

variable "storage_rg_name" {
  description = "name of the resource group"
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

variable "allow_blob_public_access" {
  description = "Allow Blob Public Access"
}

variable tags {
  type = map
}
