module "vnet" {
  source        = "../modules/virtualNetwork/"
  location      = var.location
  vnet_name     = var.vnet_name
  vnet_rg       = var.resource_group
  address_space = var.address_space
  dns_server    = var.dns_server
  tags          = {}
}

module "subnets" {
  count            = length(var.subnet_names)
  source           = "../modules/subnet/"
  subnet_name      = "subnet-${element(var.subnet_names, count.index)}"
  subnet_rg        = var.resource_group
  vnet_name        = module.vnet.vnet_name
  address_prefixes = element(var.address_prefixes, count.index)
}

data "azurerm_network_security_group" "nsg" {
  count               = length(var.subnet_nsg)
  name                = var.subnet_nsg[count.index][1]
  resource_group_name = var.resource_group
}

resource "azurerm_subnet_network_security_group_association" "subnetnsg" {
  count                     = length(var.subnet_nsg)
  network_security_group_id = data.azurerm_network_security_group.nsg[count.index].id
  subnet_id                 = "String<The ID of the Subnet. Changing this forces a new resource to be created.>"
}
