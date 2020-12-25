module "redshift" {
  source  = "../modules/redshift"
  cluster_identifier                  = var.cluster_identifier
  cluster_node_type                   = var.cluster_node_type
  cluster_number_of_nodes             = var.cluster_number_of_nodes
  cluster_database_name               = var.cluster_database_name
  cluster_master_username             = var.cluster_master_username
  cluster_master_password             = var.cluster_master_password
  cluster_port                        = var.cluster_port
  vpc_security_group_ids              = var.vpc_security_group_ids
  redshift_subnet_group_name          = var.redshift_subnet_group_name
  parameter_group_name                = var.parameter_group_name
  publicly_accessible                 = var.publicly_accessible
  snapshot_identifier                 = var.snapshot_identifier
  snapshot_cluster_identifier         = var.snapshot_cluster_identifier
  owner_account                       = var.owner_account
  final_snapshot_identifier           = var.final_snapshot_identifier
  skip_final_snapshot                 = var.skip_final_snapshot
  preferred_maintenance_window        = var.preferred_maintenance_window
  allow_version_upgrade               = var.allow_version_upgrade
  snapshot_copy_destination_region    = var.snapshot_copy_destination_region
  automated_snapshot_retention_period = var.automated_snapshot_retention_period
  cluster_iam_roles                   = var.cluster_iam_roles
  encrypted                           = var.encrypted
  kms_key_id                          = var.kms_key_id
  enhanced_vpc_routing                = var.enhanced_vpc_routing
  enable_logging                      = var.enable_logging
  logging_bucket_name                 = var.logging_bucket_name
  logging_s3_key_prefix               = var.logging_s3_key_prefix
  tags                                = var.tags
}

module "redshift_parameters" {
  source           = "../modules/redshiftParameterGroup"
  parameter_name   = var.parameter_name
  parameter_family = var.parameter_family
  parameter_map    = var.parameter_map
}
