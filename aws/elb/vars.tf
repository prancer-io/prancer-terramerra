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
variable "name_prefix" {}
variable "load_balancer_type" {}
variable "internal" {}
variable "security_groups" {}
variable "subnets" {}
variable "idle_timeout" {}
variable "enable_cross_zone_load_balancing" {}
variable "enable_deletion_protection" {}
variable "enable_http2" {}
variable "ip_address_type" {}
variable "drop_invalid_header_fields" {}
variable "subnet_mapping" {}
variable "load_balancer_create_timeout" {}
variable "load_balancer_update_timeout" {}
variable "load_balancer_delete_timeout" {}

variable "tags" {
  type = map
}
