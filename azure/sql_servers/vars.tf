variable "location" {}
variable "server_name" {}
variable "server_rg" {}
variable "server_version" {}
variable "admin_user" {}
variable "admin_password" {}

variable "enable_ad_admin" {}
variable "sql_server_login" {}

variable "enable_sql_firewall" {
  default = false
}
variable "sql_fw_name" {}
variable "sql_fw_start_ip" {}
variable "sql_fw_end_ip" {}

variable "tags" {}
