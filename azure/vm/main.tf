module "vnet" {
  source              = "../modules/virtualNetwork/"
  location            = var.location
  vnet_name           = var.vnet_name
  vnet_rg             = var.resource_group
  address_space       = var.address_space
  dns_server          = var.dns_server
  tags                = {}
}

module "subnet" {
  source                = "../modules/subnet/"
  subnet_name           = var.subnet_name
  subnet_rg             = var.resource_group
  vnet_name             = module.vnet.vnet_name
  address_prefixes      = var.address_prefixes
}

module "linuxservers" {
  source              = "../modules/vm/"
  resource_group_name = var.resource_group
  location            = var.location
  vm_os_simple        = var.vm_lin_os
  vm_size             = var.vm_lin_size
  public_ip_dns       = [var.vm_lin_public_dns]
  vnet_subnet_id      = module.subnet.subnet_id
}

module "windowsservers" {
  source              = "../modules/vm/"
  resource_group_name = var.resource_group
  location            = var.location
  vm_hostname         = var.vm_win_hostname
  admin_password      = var.vm_win_password
  vm_os_simple        = var.vm_win_os
  vm_size             = var.vm_win_size
  public_ip_dns       = [var.vm_win_public_dns]
  vnet_subnet_id      = module.subnet.subnet_id
}
