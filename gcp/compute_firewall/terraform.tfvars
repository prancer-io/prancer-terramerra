project    = "learning-269422"
location   = "us-central1"

net_name                        = "prancer-network"
net_description                 = ""
auto_create_subnetworks         = null
routing_mode                    = null
delete_default_routes_on_create = false

fw_name        = "prancer-web-firewall"
fw_allows      = [{
  protocol = "tcp"
  ports    = [80, 443]
},{
  protocol = "tcp"
  ports    = [22]
},{
  protocol = "tcp"
  ports    = ["8080-8888"]
}]
fw_source_tags = []
