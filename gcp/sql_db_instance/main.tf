module "db_instance" {
  source      = "../modules/sql_db_instance/"
  db_name     = var.db_name
  db_version  = var.db_version
  db_tier     = var.db_tier
  db_labels   = var.db_labels
  db_backup   = var.db_backup
  db_ipconf   = var.db_ipconf
  db_auth_net = var.db_auth_net
}
