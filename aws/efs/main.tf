module "efs" {
  source  = "../modules/efs"
  encrypted                       = var.encrypted
  kms_key_id                      = var.kms_key_id
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  throughput_mode                 = var.throughput_mode
  transition_to_ia                = var.transition_to_ia
  tags                            = var.tags
}
