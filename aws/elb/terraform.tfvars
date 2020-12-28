cidr_block                      = "10.10.0.0/16"
instance_tenancy                = "default"
enable_dns_hostnames            = false
enable_dns_support              = true
enable_classiclink              = null
enable_classiclink_dns_support  = null
enable_ipv6                     = false

subnet_cidr_block               = ["10.10.1.0/24", "10.10.3.0/24"]
az                              = ["a", "b"]
availability_zone_id            = [null, null]
map_public_ip_on_launch         = false
assign_ipv6_address_on_creation = false
ipv6_cidr_block                 = null

lb_name                          = "prancer-lb"
name_prefix                      = null
load_balancer_type               = "application"
internal                         = false
subnets                          = []
access_logs                      = {}
enable_cross_zone_load_balancing = false
enable_deletion_protection       = false
enable_http2                     = true
ip_address_type                  = "ipv4"
drop_invalid_header_fields       = false
subnet_mapping                   = []

elb_name                    = "prancer-elb"
availability_zones          = ["us-east-2a", "us-east-2b"]
security_groups             = []
logging_enabled             = false
bucket                      = ""
bucket_prefix               = ""
log_interval                    = 60
listener                    = {
  listener1 = {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 80
    lb_protocol        = "http"
    ssl_certificate_id = null
  }
}
healthy_threshold           = 2
unhealthy_threshold         = 2
timeout                     = 3
target                      = "HTTP:8000/"
check_interval              = 30
instances                   = []
cross_zone_load_balancing   = false
idle_timeout                = 400
connection_draining         = false
connection_draining_timeout = 400

policy_name                      = "prancer-cipher"
policy_type                      = "SSLNegotiationPolicyType"
policy_attribute_map             = {
  RC4-MD5 = "true"
  Protocol-SSLv3 = "true"
}

tags                                = {
  environment = "Production"
  project = "Prancer"
}
