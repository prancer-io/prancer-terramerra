module "nsg" {
  source                    = "../modules/networkSecurityGroup/"
  location                  = var.location
  resource_group_name       = var.resource_group_name
  nsg_name                  = var.nsg_name
  nsr_names                 = var.nsr_names
  nsr_priorities            = var.nsr_priorities
  nsr_directions            = var.nsr_directions
  nsr_accesses              = var.nsr_accesses
  nsr_protocols             = var.nsr_protocols
  nsr_src_ports             = var.nsr_src_ports
  nsr_dst_ports             = var.nsr_dst_ports
  nsr_src_addresses         = var.nsr_src_addresses
  nsr_dst_addresses         = var.nsr_dst_addresses
  tags                      = var.tags
}
