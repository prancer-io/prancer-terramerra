cidr_block                      = "10.10.0.0/16"
instance_tenancy                = "default"
enable_dns_hostnames            = false
enable_dns_support              = true
enable_classiclink              = null
enable_classiclink_dns_support  = null
enable_ipv6                     = false

subnet_cidr_block               = ["10.10.1.0/24", "10.10.3.0/24"]
availability_zone               = [null, null]
availability_zone_id            = [null, null]
map_public_ip_on_launch         = false
assign_ipv6_address_on_creation = false
ipv6_cidr_block                 = null

name                             = "prancer-elb"
name_prefix                      = null
load_balancer_type               = "application"
internal                         = false
security_groups                  = []
subnets                          = []
idle_timeout                     = 60
enable_cross_zone_load_balancing = false
enable_deletion_protection       = false
enable_http2                     = true
ip_address_type                  = "ipv4"
drop_invalid_header_fields       = false
subnet_mapping                   = []
load_balancer_create_timeout     = "10m"
load_balancer_update_timeout     = "10m"
load_balancer_delete_timeout     = "10m"

tags                                = {
  environment = "Production"
  project = "Prancer"
}
