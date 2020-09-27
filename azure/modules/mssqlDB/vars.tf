variable "sql_db_name" {}
variable "sql_server_id" {}
variable "sql_db_collation" {}
variable "sql_db_license_type" {}
variable "sql_db_max_size_gb" {}
variable "sql_db_read_scale" {}
variable "sql_db_sku_name" {}
variable "sql_db_zone_redundant" {}

variable "sql_db_threat_state" {
  default = "Disabled"
}
variable "sql_db_threat_admin_mail" {
  default = "Disabled"
}
variable "sql_db_threat_retention" {
  default = 0
}
variable "sql_db_threat_access_key" {
  default = null
}
variable "sql_db_threat_endpoint" {
  default = null
}
variable "sql_db_threat_server_default" {
  default = "Disabled"
}

variable tags {
  type = map
}
