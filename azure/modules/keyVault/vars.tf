variable "name" {
  description = "name"
}

variable "location" {
  description = "location"
}

variable "resourceGroup" {
  description = "name of the resource group"
}

variable "skuname" {
  description = "name of the sku"
}

variable "enabled_for_disk_encryption" {
  description = "enabled_for_disk_encryption"
  default = false
}

variable "enabled_for_deployment" {
  description = "enabled_for_deployment"
  default = false
}

variable "enabled_for_template_deployment" {
  description = "enabled_for_template_deployment"
  default = false
}

variable "key_permissions" {
  type    = list
  default = [
      "get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
}

variable "secret_permissions" {
  type    = list
  default = [
      "get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
}

variable "certificate_permissions" {
  type    = list
  default = [
      "backup", 
      "create", 
      "delete", 
      "deleteissuers", 
      "get", 
      "getissuers", 
      "import", 
      "list", 
      "listissuers", 
      "managecontacts", 
      "manageissuers", 
      "purge", 
      "recover", 
      "restore", 
      "setissuers", 
      "update"
      ]
}
variable "tags"{
  type = map
}
