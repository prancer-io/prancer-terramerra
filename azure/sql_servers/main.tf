module "sqlServers" {
  source                    = "../modules/sqlServer/"
  location                  = var.location
  server_name               = var.server_name
  server_rg                 = var.server_rg
  server_version            = var.server_version
  admin_user                = var.admin_user
  admin_password            = var.admin_password
  tags                      = var.tags
}
