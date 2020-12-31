variable "name" {}
variable "enable_container_insights" {}
variable "family" {}
variable "task_role_arn" {}
variable "execution_role_arn" {}
variable "network_mode" {}
variable "cpu" {}
variable "memory" {}
variable "tags" {
  type = map
}
