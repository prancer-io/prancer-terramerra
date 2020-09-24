variable "location" {
  description = "The location/region where resource will be created. Changing this forces a new resource to be created."
}

variable "server_name" {
  description = "The name of the SQL Server. This needs to be globally unique within Azure."
}

variable "server_rg" {
  description = "The name of the resource group in which to create the SQL Server."
}

variable "server_version" {
  description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
}

variable "admin_user" {
  description = "The administrator login name for the new server. Changing this forces a new resource to be created."
}

variable "admin_password" {
  description = " The password associated with the administrator_login user. Needs to comply with Azure's Password Policy."
}

variable tags {
  type = map
}
