output "sqlserver_id" {
  value = "${azurerm_sql_server.sqlserver.id}"
}

output "sqlserver_fqdn" {
  value = "${azurerm_sql_server.sqlserver.fully_qualified_domain_name}"
}

output "sqlserver_name" {
  value = "${azurerm_sql_server.sqlserver.name}"
}
