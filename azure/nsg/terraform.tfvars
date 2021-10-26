location             = "eastus2"
resource_group_name  = "prancer-test-rg"

nsg_name             = "prancer-nsg"

names                = [
  "allow-all-tcp",
  "allow-port-range",
  "allow-all-udp"
]
priorities           = [100, 101, 102]
directions           = ["Inbound", "Inbound", "Outbound"]
accesses             = ["Allow", "Allow", "Allow"]
protocols            = ["Tcp", "Tcp", "Udp"]
src_ports            = ["*", "*", "*"]
dst_ports            = ["*", "20-6000", "*"]
src_addresses        = ["Internet", "Internet", "Internet"]
dst_addresses        = ["Internet", "*", "*"]

tags                 = {}
