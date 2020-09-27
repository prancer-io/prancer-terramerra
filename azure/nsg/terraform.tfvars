location             = "eastus2"
resource_group_name  = "prancer-test-rg"

nsg_name             = "prancer-nsg"

nsr_names            = [
  "block-port-range-20-22",
  "block-port-3306"
]
nsr_priorities       = [100, 101]
nsr_directions       = ["Inbound", "Inbound"]
nsr_accesses         = ["Deny", "Deny"]
nsr_protocols        = ["Tcp", "Tcp"]
nsr_src_ports        = ["*", "*"]
nsr_dst_ports        = ["20-22", "3306"]
nsr_src_addresses    = ["Internet", "Internet"]
nsr_dst_addresses    = ["Internet", "Internet"]

tags                 = {}
