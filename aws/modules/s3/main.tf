resource "aws_s3_bucket" "s3_bucket" {

  bucket = var.bucket_name
  acl    = var.bucket_acl

  acceleration_status = var.acceleration_status

  cors_rule {
    allowed_headers = var.cors_allowed_headers
    allowed_methods = var.cors_allowed_methods
    allowed_origins = var.cors_allowed_origins
    expose_headers  = var.cors_expose_headers
    max_age_seconds = var.cors_max_age_seconds
  }

  versioning {
    enabled = var.versioning_enabled
  }

  lifecycle_rule {
    id      = "transition-to-infrequent-access-storage"
    enabled = var.lifecycle_infrequent_storage_transition_enabled
    prefix  = var.lifecycle_infrequent_storage_object_prefix
    tags    = var.lifecycle_infrequent_storage_object_tags

    transition {
      days          = var.lifecycle_days_to_infrequent_storage_transition
      storage_class = "STANDARD_IA"
    }

    dynamic "noncurrent_version_transition" {
      for_each = var.transition_noncurrent_versions == "false" ? [] : [1]
      content {
        days          = var.lifecycle_days_to_infrequent_storage_transition
        storage_class = "STANDARD_IA"
      }
    }
  }

  lifecycle_rule {
    id      = "transition-to-glacier"
    enabled = var.lifecycle_glacier_transition_enabled

    prefix = var.lifecycle_glacier_object_prefix

    tags = var.lifecycle_glacier_object_tags

    transition {
      days          = var.lifecycle_days_to_glacier_transition
      storage_class = "GLACIER"
    }

    dynamic "noncurrent_version_transition" {
      for_each = var.transition_noncurrent_versions == "false" ? [] : [1]
      content {
        days          = var.lifecycle_days_to_glacier_transition
        storage_class = "GLACIER"
      }
    }
  }

  lifecycle_rule {
    id      = "expire-objects"
    enabled = var.lifecycle_expiration_enabled

    prefix = var.lifecycle_expiration_object_prefix

    tags = var.lifecycle_expiration_object_tags

    expiration {
      days = var.lifecycle_days_to_expiration
    }

    dynamic "noncurrent_version_expiration" {
      for_each = var.expire_noncurrent_versions == "false" ? [] : [1]
      content {
        days = var.lifecycle_days_to_expiration
      }
    }
  }

  dynamic "server_side_encryption_configuration" {
    for_each = var.server_side_encryption_configuration
    content {
      dynamic "rule" {
        for_each = lookup(server_side_encryption_configuration.value, "rule", [])
        content {
          dynamic "apply_server_side_encryption_by_default" {
            for_each = lookup(rule.value, "apply_server_side_encryption_by_default", [])
            content {
              kms_master_key_id = lookup(apply_server_side_encryption_by_default.value, "kms_master_key_id", null)
              sse_algorithm     = apply_server_side_encryption_by_default.value.sse_algorithm
            }
          }
        }
      }
    }
  }

  tags = var.tags
}
