resource "azurerm_mssql_server" "mssqlserver" {
  name                = var.server_name
  resource_group_name = var.server_rg
  location            = var.location

  version                       = var.server_version
  administrator_login           = var.admin_user
  administrator_login_password  = var.admin_password
  public_network_access_enabled = var.public_network_access_enabled

  azuread_administrator {
    login_username = var.sql_ad_username
    object_id      = var.sql_ad_object_id
  }

  tags = var.tags
  extended_auditing_policy {
    storage_endpoint                        = "String<Specifies the blob storage endpoint (e.g. https://MyAccount.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs.>"
    storage_account_access_key              = "String<Specifies the access key to use for the auditing storage account.>"
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }
}
