output "subnet_id" {
  value = "${azurerm_subnet.sub.id}"
}

output "subnet_name" {
  value = "${azurerm_subnet.sub.name}"
}

output "subnet_rg_name" {
  value = "${azurerm_subnet.sub.resource_group_name}"
}

output "subnet_addressprefix" {
  value = "${azurerm_subnet.sub.address_prefixes}"
}
