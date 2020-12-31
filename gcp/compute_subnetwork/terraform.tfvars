project    = "learning-269422"
location   = "us-central1"

net_name                        = "prancer-network"
net_description                 = ""
auto_create_subnetworks         = null
routing_mode                    = null
delete_default_routes_on_create = false

subnet_name              = "prancer-subnet"
ip_cidr_range            = "10.10.0.0/24"
log_enabled              = false
log_aggregation_interval = "INTERVAL_10_MIN"
log_flow_sampling        = 0.5
log_metadata             = "INCLUDE_ALL_METADATA"
private_ip_google_access = false
