project  = "learning-269422"
location = "us-central1"

net_name                        = "prancer-network"
net_description                 = ""
auto_create_subnetworks         = null
routing_mode                    = null
delete_default_routes_on_create = false

fw_name      = "String<Enter name which is not in given list. ['default-allow-ssh', 'default-allow-icmp', 'default-allow-internal', 'default-allow-rdp'] >"
fw_direction = "INGRESS"
fw_allows = [{
  protocol = "tcp"
  ports    = [443]
  }, {
  protocol = "tcp"
  ports    = ["20-28000"]
}]
fw_source_ranges = "String<Enter valid sourceRange and these ranges must be expressed in <a href='https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing' target='_blank'>CIDR</a> format. >"
fw_source_tags   = []
