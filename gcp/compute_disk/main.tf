module "disk" {
  source                    = "../modules/compute_disk/"
  disk_name                 = var.disk_name
  disk_type                 = var.disk_type
  zone                      = var.zone
  disk_image                = var.disk_image
  disk_labels               = var.disk_labels
  physical_block_size_bytes = var.physical_block_size_bytes
  disk_encrypted            = var.disk_encrypted
  raw_key                   = var.raw_key
  sha256                    = var.sha256
  kms_key_self_link         = var.kms_key_self_link
  kms_key_service_account   = var.kms_key_service_account
}
