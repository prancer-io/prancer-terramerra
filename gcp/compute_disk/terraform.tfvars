project    = "learning-269422"
location   = "us-central1"

disk_name                 = "prancer-disk"
disk_type                 = "pd-ssd"
zone                      = "us-central1-a"
disk_image                = "debian-9-stretch-v20200805"
disk_labels               = {
  environment = "prod"
}
physical_block_size_bytes = 4096
disk_encrypted            = false
raw_key                   = null
sha256                    = null
kms_key_self_link         = null
kms_key_service_account   = null
