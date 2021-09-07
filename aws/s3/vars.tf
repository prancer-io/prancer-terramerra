variable "bucket_name" {}
variable "bucket_acl" {}
variable "acceleration_status" {}
variable "versioning_enabled" { default = true
}
variable "cors_allowed_headers" {}
variable "cors_allowed_methods" {}
variable "cors_allowed_origins" {}
variable "cors_expose_headers" {}
variable "cors_max_age_seconds" {}
variable "lifecycle_infrequent_storage_transition_enabled" {}
variable "lifecycle_infrequent_storage_object_prefix" {}
variable "lifecycle_infrequent_storage_object_tags" {}
variable "lifecycle_days_to_infrequent_storage_transition" {}
variable "lifecycle_glacier_transition_enabled" {}
variable "lifecycle_glacier_object_prefix" {}
variable "lifecycle_glacier_object_tags" {}
variable "lifecycle_days_to_glacier_transition" {}
variable "transition_noncurrent_versions" {}
variable "lifecycle_expiration_enabled" {}
variable "lifecycle_expiration_object_prefix" {}
variable "lifecycle_expiration_object_tags" {}
variable "expire_noncurrent_versions" {}
variable "lifecycle_days_to_expiration" {}
variable "server_side_encryption_configuration" {}
variable "enable_logging" {}
variable "target_bucket" {}
variable "target_prefix" {}
variable "enable_website" {}
variable "redirect_all_requests_to" {}
variable "s3_policy" {}
variable "s3_policy_sslonly" {}
variable "tags" {
  type = map
}
