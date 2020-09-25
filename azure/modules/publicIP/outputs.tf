output "pid" {
  value = "${azurerm_public_ip.public.id}"
}

output "ipaddress" {
  value = "${azurerm_public_ip.public.ip_address}"
}
