encrypted                       = true
kms_key_id                      = "String<The ARN for the KMS encryption key>"
performance_mode                = "generalPurpose"
provisioned_throughput_in_mibps = 0
throughput_mode                 = "bursting"
transition_to_ia                = ""

tags = {
  environment = "Production"
  project     = "Prancer"
}
