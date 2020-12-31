variable "cidr_block" {}
variable "instance_tenancy" {}
variable "enable_dns_hostnames" {}
variable "enable_dns_support" {}
variable "enable_classiclink" {}
variable "enable_classiclink_dns_support" {}
variable "enable_ipv6" {}

variable "subnet_cidr_block" {}
variable "az" {}
variable "availability_zone_id" {}
variable "map_public_ip_on_launch" {}
variable "assign_ipv6_address_on_creation" {}
variable "ipv6_cidr_block" {}

variable "lb_name" {}
variable "name_prefix" {}
variable "load_balancer_type" {}
variable "internal" {}
variable "subnets" {}
variable "access_logs" {}
variable "enable_cross_zone_load_balancing" {}
variable "enable_deletion_protection" {}
variable "enable_http2" {}
variable "ip_address_type" {}
variable "drop_invalid_header_fields" {}
variable "subnet_mapping" {}

variable "elb_name" {}
variable "availability_zones" {}
variable "security_groups" {}
variable "logging_enabled" {}
variable "bucket" {}
variable "bucket_prefix" {}
variable "log_interval" {}
variable "listener" {}
variable "healthy_threshold" {}
variable "unhealthy_threshold" {}
variable "timeout" {}
variable "target" {}
variable "check_interval" {}
variable "instances" {}
variable "cross_zone_load_balancing" {}
variable "idle_timeout" {}
variable "connection_draining" {}
variable "connection_draining_timeout" {}

variable "policy_name" {}
variable "policy_type" {}
variable "policy_attribute_map" {}

variable "tags" {
  type = map
}
