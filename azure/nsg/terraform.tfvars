location            = "eastus2"
resource_group_name = "prancer-test-rg"

nsg_name = "prancer-nsg"

names = [
  "allow-all-tcp",
  "allow-port-range",
  "allow-all-udp",
  "allow-all-tcpinbound",
  "allow-all-udpinbound",
  "allow-all-inbound",
  "allow-all-inbound-icmp"
]
priorities    = [100, 101, 102, 103, 104, 105, 106]
directions    = ["Inbound", "Inbound", "Outbound", "Inbound", "Inbound", "Inbound", "Inbound"]
accesses      = ["deny", "Allow", "Allow", "Allow", "Allow", "Allow", "Allow"]
protocols     = ["Tcp", "Tcp", "Udp", "Tcp", "Udp", "*", "Icmp"]
src_ports     = ["*", "*", "*", "*", "*", "*", "*"]
dst_ports     = ["*", "20-6000", "*", "*", "*", "*", "*"]
src_addresses = ["*", "Internet", "Internet", "Internet", "Internet", "Internet", "Internet"]
dst_addresses = ["*", "*", "*", "*", "*", "*", "*"]

tags = {}
