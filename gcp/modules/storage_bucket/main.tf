resource "google_storage_bucket" "bucket" {
  name          = var.name
  project       = var.project_id
  location      = var.location
  storage_class = var.storage_class
  labels        = var.labels
  force_destroy = var.force_destroy

  uniform_bucket_level_access = var.bucket_policy_only

  versioning {
    enabled = var.versioning
  }

  dynamic "encryption" {
    for_each = var.encryption_key_names
    content {
      default_kms_key_name = encryption.value
    }
  }

  dynamic "cors" {
    for_each = var.cors
    content {
      origin          = lookup(cors.value, "origin", null)
      method          = lookup(cors.value, "method", null)
      response_header = lookup(cors.value, "response_header", null)
      max_age_seconds = lookup(cors.value, "max_age_seconds", null)
    }
  }

  dynamic "website" {
    for_each = var.website
    content {
      main_page_suffix = lookup(website.value, "main_page_suffix", null)
      not_found_page   = lookup(website.value, "not_found_page", null)
    }
  }
}
