variable "role_name" {}
variable "role_path" {}
variable "max_session_duration" {}
variable "role_description" {}
variable "force_detach_policies" {}
variable "role_permissions_boundary_arn" {}
variable "assume_role_policy" {}

variable "cidr_block" {}
variable "instance_tenancy" {}
variable "enable_dns_hostnames" {}
variable "enable_dns_support" {}
variable "enable_classiclink" {}
variable "enable_classiclink_dns_support" {}
variable "enable_ipv6" {}

variable "subnet_cidr_block" {}
variable "availability_zone" {}
variable "availability_zone_id" {}
variable "map_public_ip_on_launch" {}
variable "assign_ipv6_address_on_creation" {}
variable "ipv6_cidr_block" {}

variable "name" {}
variable "kubernetes_version" {}
variable "enabled_cluster_log_types" {}
variable "cluster_encryption_config_enabled" {}
variable "security_group_ids" {}
variable "endpoint_private_access" {}
variable "endpoint_public_access" {}
variable "public_access_cidrs" {}

variable "tags" {
  type = map
}
