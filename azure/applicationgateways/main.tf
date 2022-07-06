module "vnet" {
  source        = "../modules/virtualNetwork/"
  location      = var.location
  vnet_name     = var.vnet_name
  vnet_rg       = var.resource_group
  address_space = var.address_space
  dns_server    = var.dns_server
  tags          = var.tags
}

module "subnet-frontend" {
  source           = "../modules/subnet/"
  subnet_name      = var.subnet_name_fe
  subnet_rg        = var.resource_group
  vnet_name        = module.vnet.vnet_name
  address_prefixes = var.address_prefixes_fe
}

module "subnet-backend" {
  source           = "../modules/subnet/"
  subnet_name      = var.subnet_name_be
  subnet_rg        = var.resource_group
  vnet_name        = module.vnet.vnet_name
  address_prefixes = var.address_prefixes_be
}

module "publicIP" {
  source         = "../modules/publicIP/"
  name           = var.pip_name
  location       = var.location
  resource_group = var.resource_group
  type           = var.pip_type
  sku            = var.pip_sku
  ip_version     = var.ip_version
  tags           = var.tags
}

module "applicationGateway" {
  source                 = "../modules/applicationGateway/"
  location               = var.location
  app_gw_rg              = var.resource_group
  app_gw_name            = var.app_gw_name
  app_gw_sku             = var.app_gw_sku
  app_gw_tier            = var.app_gw_tier
  app_gw_capacity        = var.app_gw_capacity
  app_gw_fe_pip          = module.publicIP.pid
  app_gw_fe_port         = var.app_gw_fe_port
  app_gw_fe_subnet       = module.subnet-frontend.subnet_id
  app_gw_be_http_cookie  = var.app_gw_be_http_cookie
  app_gw_be_http_path    = var.app_gw_be_http_path
  app_gw_be_http_port    = var.app_gw_be_http_port
  app_gw_be_http_proto   = var.app_gw_be_http_proto
  app_gw_be_http_timeout = var.app_gw_be_http_timeout
  app_gw_ip              = var.app_gw_ip
  app_gw_listener_proto  = var.app_gw_listener_proto
  app_gw_req_route_type  = var.app_gw_req_route_type
  min_protocol_version   = var.min_protocol_version
  waf_enabled            = var.waf_enabled
  waf_firewall_mode      = var.waf_firewall_mode
  waf_rule_set_type      = var.waf_rule_set_type
  waf_rule_set_version   = var.waf_rule_set_version
}

resource "azurerm_subnet_network_security_group_association" "<azurerm_subnet_network_security_group_association_name>" {
  name                      = "String<Name of the azurerm_subnet_network_security_group_association>"
  subnet_id                 = "String<The ID of the Subnet. Changing this forces a new resource to be created.>"
  network_security_group_id = "String<The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.>"
}
