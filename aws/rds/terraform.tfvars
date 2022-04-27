cluster_identifier          = "prancer-rds-cluster"
cluster_engine_mode         = "multimaster"
cluster_master_password     = "c9209030ffc53a3fa5663955f65a85de"
cluster_master_username     = "dbadm"
cluster_skip_final_snapshot = true
cluster_kms_key_id          = null
cluster_storage_encrypted   = false

identifier                            = "prancer-rds"
engine                                = "mysql"
engine_version                        = "5.7"
instance_class                        = "db.t2.micro"
allocated_storage                     = 5
storage_type                          = "gp2"
storage_encrypted                     = false
kms_key_id                            = null
license_model                         = null
name                                  = "prancerrdsdb"
username                              = "prancerdbadmin"
password                              = "otObicedfobgurEydHef9ofEfjalvib="
port                                  = 3306
domain                                = ""
domain_iam_role_name                  = ""
iam_database_authentication_enabled   = false
replicate_source_db                   = ""
snapshot_identifier                   = ""
vpc_security_group_ids                = []
db_subnet_group_name                  = ""
parameter_group_name                  = ""
option_group_name                     = ""
availability_zone                     = ""
multi_az                              = false
iops                                  = 0
publicly_accessible                   = true
monitoring_interval                   = 0
monitoring_role_arn                   = ""
allow_major_version_upgrade           = false
auto_minor_version_upgrade            = true
apply_immediately                     = false
maintenance_window                    = "sun:03:00-sun:05:00"
skip_final_snapshot                   = true
copy_tags_to_snapshot                 = false
final_snapshot_identifier             = null
max_allocated_storage                 = 0
performance_insights_enabled          = false
performance_insights_retention_period = null
backup_retention_period               = 0
backup_window                         = "05:05-07:05"
timezone                              = ""
enabled_cloudwatch_logs_exports       = []
deletion_protection                   = false
cluster_backup_retention_period       = 0
timeouts = {
  "create" : "40m",
  "delete" : "40m",
  "update" : "80m"
}

tags = {
  environment = "Production"
  project     = "Prancer"
}
