cluster_identifier                  = "prancerredshiftcluster"
cluster_node_type                   = "dc1.large"
cluster_number_of_nodes             = 1
cluster_database_name               = "prancerredshiftdb"
cluster_master_username             = "dbadmin"
cluster_master_password             = "rez^SwuAmjanHokhornoivyifokvots7"
cluster_port                        = 5439
vpc_security_group_ids              = []
redshift_subnet_group_name          = ""
parameter_group_name                = ""
publicly_accessible                 = true
snapshot_identifier                 = null
snapshot_cluster_identifier         = null
owner_account                       = null
final_snapshot_identifier           = null
skip_final_snapshot                 = true
automated_snapshot_retention_period = 0
preferred_maintenance_window        = "sun:03:00-sun:05:00"
allow_version_upgrade               = false
snapshot_copy_destination_region    = null
cluster_iam_roles                   = []
encrypted                           = false
kms_key_id                          = ""
enhanced_vpc_routing                = false
enable_logging                      = false
logging_bucket_name                 = null
logging_s3_key_prefix               = null

parameter_name                      = "prancer-redshift-params"
parameter_family                    = "redshift-1.0"
parameter_map                       = {
  require_ssl = "false"
}

tags                                = {
  environment = "Production"
  project = "Prancer"
}
