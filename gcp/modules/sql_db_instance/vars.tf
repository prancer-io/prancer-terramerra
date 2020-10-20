variable "db_name" {
  type = string
  default = ""
}
variable "db_version" {
  type = string
  default = "MYSQL_5_7"
}
variable "db_tier" {
  type = string
  default = "db-f1-micro"
}
variable "db_labels" {
  type = map
  default = {}
}
variable "db_backup" {
  type = list(map(string))
  default = [{}]
}
variable "db_ipconf" {
  type = list
  default = []
}
variable "db_auth_net" {
  type = list(object({
    name = string
    value = string
  }))
  default = []
}
