resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_network_security_rule" "nsr" {
  count                       = length(var.nsr_names)
  name                        = element(var.nsr_names, count.index)
  priority                    = element(var.nsr_priorities, count.index)
  direction                   = element(var.nsr_directions, count.index)
  access                      = element(var.nsr_accesses, count.index)
  protocol                    = element(var.nsr_protocols, count.index)
  source_port_range           = element(var.nsr_src_ports, count.index)
  destination_port_range      = element(var.nsr_dst_ports, count.index)
  source_address_prefix       = element(var.nsr_src_addresses, count.index)
  destination_address_prefix  = element(var.nsr_dst_addresses, count.index)
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.nsg_name
  depends_on                  = [azurerm_network_security_group.nsg]
}
