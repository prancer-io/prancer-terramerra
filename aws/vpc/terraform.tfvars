cidr_block                     = "10.10.0.0/16"
instance_tenancy               = "default"
enable_dns_hostnames           = false
enable_dns_support             = true
enable_classiclink             = null
enable_classiclink_dns_support = null
enable_ipv6                    = false

subnet_cidr_block               = "10.10.1.0/24"
availability_zone               = null
availability_zone_id            = null
map_public_ip_on_launch         = false
assign_ipv6_address_on_creation = false
ipv6_cidr_block                 = null

tags = {
  environment = "Production"
  project     = "Prancer"
}
