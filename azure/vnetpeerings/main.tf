module "peer1" {
  source                = "../modules/virtualNetwork/"
  location              = var.location
  vnet_name             = var.peer1_vnet
  vnet_rg               = var.resource_group
  address_space         = var.peer1_address_space
  dns_server            = var.peer1_dns_server
  tags                  = {}
}

module "peer2" {
  source                = "../modules/virtualNetwork/"
  location              = var.location
  vnet_name             = var.peer2_vnet
  vnet_rg               = var.resource_group
  address_space         = var.peer2_address_space
  dns_server            = var.peer2_dns_server
  tags                  = {}
}

module "vnetpeering" {
  source                = "../modules/network-peering/"
  peering_name                  = var.peering_name
  vnet_name1                    = module.peer1.vnet_name
  vnet_name2                    = module.peer2.vnet_name
  vnet_rg1                      = var.resource_group
  vnet_rg2                      = var.resource_group
  vnet1_id                      = module.peer2.vnet_id
  vnet2_id                      = module.peer1.vnet_id
  allow_virtual_network_access1 = var.allow_virtual_network_access1
  allow_forwarded_traffic1      = var.allow_forwarded_traffic1
  allow_gateway_transit1        = var.allow_gateway_transit1
  allow_virtual_network_access2 = var.allow_virtual_network_access2
  allow_forwarded_traffic2      = var.allow_forwarded_traffic2
  allow_gateway_transit2        = var.allow_gateway_transit2
}
