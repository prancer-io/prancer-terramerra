location       = "eastus2"
resource_group = "prancer-test-rg"

peer1_vnet = "peer1"
peer2_vnet = "peer2"

peer1_address_space = "10.154.0.0/16"
peer1_dns_server    = "10.154.0.1"
peer2_address_space = "10.254.0.0/16"
peer2_dns_server    = "10.254.0.1"

peering_name                  = "prancer-vnet-peering"
allow_virtual_network_access1 = true
allow_forwarded_traffic1      = true
allow_gateway_transit1        = false
allow_virtual_network_access2 = true
allow_forwarded_traffic2      = true
allow_gateway_transit2        = false

tags = {}

