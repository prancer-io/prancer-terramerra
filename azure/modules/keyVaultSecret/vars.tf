variable "name" {
  description = "Specifies the name of the Key Vault Secret. Changing this forces a new resource to be created."
}

variable "value" {
  description = "Specifies the value of the Key Vault Secret."
  type = string
}

variable "keyvault_id" {}

variable "tags"{
  type = map
}
