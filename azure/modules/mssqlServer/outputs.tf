output "sqlserver_id" {
  value = azurerm_mssql_server.mssqlserver.id
}

output "sqlserver_fqdn" {
  value = azurerm_mssql_server.mssqlserver.fully_qualified_domain_name
}

output "sqlserver_name" {
  value = azurerm_mssql_server.mssqlserver.name
}
