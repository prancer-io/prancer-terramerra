resource "aws_rds_cluster" "rdscluster" {
  cluster_identifier      = var.cluster_identifier
  engine_mode             = var.cluster_engine_mode
  master_password         = var.cluster_master_password
  master_username         = var.cluster_master_username
  skip_final_snapshot     = var.cluster_skip_final_snapshot
  kms_key_id              = var.cluster_kms_key_id
  storage_encrypted       = var.cluster_storage_encrypted
  backup_retention_period = var.cluster_backup_retention_period
  deletion_protection     = true
}
