project    = "learning-269422"
location   = "us-central1"

db_name    = "prancer-mysql"
db_version = "MYSQL_5_7"
db_tier    = "db-f1-micro"
db_labels  = {
  type = "mysql"
}
db_backup  = [{
  binary_log_enabled             = false
  enabled                        = false
  point_in_time_recovery_enabled = false
  start_time                     = "02:00"
}]
db_ipconf = [{
  ipv4_enabled = true
  require_ssl  = false
}]
db_auth_net = []
