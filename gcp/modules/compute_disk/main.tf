resource "google_compute_disk" "disk" {
  name                      = var.disk_name
  type                      = var.disk_type
  zone                      = var.zone
  image                     = var.disk_image
  labels                    = var.disk_labels
  physical_block_size_bytes = var.physical_block_size_bytes

  snapshot_encryption_key {
    raw_key                 = var.raw_key
    sha256                  = var.sha256
    kms_key_self_link       = var.kms_key_self_link
    kms_key_service_account = var.kms_key_service_account
  }
}
