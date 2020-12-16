output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_rg" {
  value = azurerm_virtual_network.vnet.resource_group_name
}

output "vnet_location" {
  value = azurerm_virtual_network.vnet.location
}

output "vnet_addressspace" {
  value = azurerm_virtual_network.vnet.address_space
}
