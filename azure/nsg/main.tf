module "nsg" {
  source                    = "../modules/networkSecurityGroup/"
  location                  = var.location
  resource_group_name       = var.resource_group_name
  nsg_name                  = var.nsg_name
  nsr_names                 = var.names
  nsr_priorities            = var.priorities
  nsr_directions            = var.directions
  nsr_accesses              = var.accesses
  nsr_protocols             = var.protocols
  nsr_src_ports             = var.src_ports
  nsr_dst_ports             = var.dst_ports
  nsr_src_addresses         = var.src_addresses
  nsr_dst_addresses         = var.dst_addresses
  tags                      = var.tags
}
