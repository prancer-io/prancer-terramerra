resource "aws_redshift_cluster" "redshift" {
  cluster_identifier = var.cluster_identifier
  node_type          = var.cluster_node_type
  number_of_nodes    = var.cluster_number_of_nodes
  cluster_type       = var.cluster_number_of_nodes > 1 ? "multi-node" : "single-node"
  database_name      = var.cluster_database_name
  master_username    = var.cluster_master_username
  master_password    = var.cluster_master_password

  port = var.cluster_port

  vpc_security_group_ids = var.vpc_security_group_ids

  cluster_subnet_group_name    = var.redshift_subnet_group_name
  cluster_parameter_group_name = var.parameter_group_name

  publicly_accessible = var.publicly_accessible

  # Restore from snapshot
  snapshot_identifier         = var.snapshot_identifier
  snapshot_cluster_identifier = var.snapshot_cluster_identifier
  owner_account               = var.owner_account

  # Snapshots and backups
  final_snapshot_identifier           = var.final_snapshot_identifier
  skip_final_snapshot                 = var.skip_final_snapshot
  automated_snapshot_retention_period = var.automated_snapshot_retention_period
  preferred_maintenance_window        = var.preferred_maintenance_window
  allow_version_upgrade               = var.allow_version_upgrade

  # Snapshots copy to another region
  dynamic "snapshot_copy" {
    for_each = compact([var.snapshot_copy_destination_region])
    content {
      destination_region = var.snapshot_copy_destination_region
      retention_period   = var.automated_snapshot_retention_period
    }
  }

  # IAM Roles
  iam_roles = var.cluster_iam_roles

  # Encryption
  encrypted  = var.encrypted
  kms_key_id = var.kms_key_id

  # Enhanced VPC routing
  enhanced_vpc_routing = var.enhanced_vpc_routing

  # Logging
  logging {
    enable        = var.enable_logging
    bucket_name   = var.logging_bucket_name
    s3_key_prefix = var.logging_s3_key_prefix
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [master_password]
  }
}
