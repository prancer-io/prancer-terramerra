output "vm_ids" {
  description = "Virtual machine ids created."
  value       = "${concat(azurerm_virtual_machine.vm-windows.*.id, azurerm_virtual_machine.vm-linux.*.id)}"
}

output "network_interface_ids" {
  description = "ids of the vm nics provisoned."
  value       = "${azurerm_network_interface.vm.*.id}"
}

output "network_interface_private_ip" {
  description = "private ip addresses of the vm nics"
  value       = "${azurerm_network_interface.vm.*.private_ip_address}"
}

output "availability_set_id" {
  description = "id of the availability set where the vms are provisioned."
  value       = "${azurerm_availability_set.vm.id}"
}
