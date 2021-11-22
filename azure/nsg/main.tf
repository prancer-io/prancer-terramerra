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

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

resource "azurerm_network_security_group" "example" {
  name                = "example-nsg"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_network_security_rule" "example" {
  name                        = "exampleinbound-nsgrule"
  network_security_group_name = azurerm_network_security_group.example.name
  resource_group_name         = azurerm_resource_group.example.name
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
}
  
resource "azurerm_network_security_rule" "example" {
  name                        = "example-nsgrule"
  network_security_group_name = azurerm_network_security_group.example.name
  resource_group_name         = azurerm_resource_group.example.name
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "Sql.WestEurope"
}

resource "azurerm_network_security_rule" "endpoint" {
  name                        = "Management_endpoint_for_Azure_portal_and_Powershell"
  priority                    = 120
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3443"
  source_address_prefix       = "ApiManagement"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.test.name
  network_security_group_name = azurerm_network_security_group.test.name
}

resource "azurerm_network_security_rule" "authenticate" {
  name                        = "Authenticate_To_Azure_Active_Directory"
  priority                    = 200
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_ranges     = ["80", "443"]
  source_address_prefix       = "ApiManagement"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = azurerm_resource_group.test.name
  network_security_group_name = azurerm_network_security_group.test.name
}
