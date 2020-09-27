module "vnet" {
  source                = "../modules/virtualNetwork/"
  location              = var.location
  vnet_name             = var.vnet_name
  vnet_rg               = var.resource_group
  address_space         = var.address_space
  dns_server            = var.dns_server
  tags                  = {}
}

module "subnet-frontend" {
  source                = "../modules/subnet/"
  subnet_name           = var.subnet_name_fe
  subnet_rg             = var.resource_group
  vnet_name             = module.vnet.vnet_name
  address_prefixes      = var.address_prefixes_fe
}

module "subnet-backend" {
  source                = "../modules/subnet/"
  subnet_name           = var.subnet_name_be
  subnet_rg             = var.resource_group
  vnet_name             = module.vnet.vnet_name
  address_prefixes      = var.address_prefixes_be
}

resource "azurerm_subnet_network_security_group_association" "frontend-nsg" {
  count                     = var.frontend_nsg == null ? 0 : 1
  subnet_id                 = module.subnet-frontend.subnet_id
  network_security_group_id = var.frontend_nsg
}
