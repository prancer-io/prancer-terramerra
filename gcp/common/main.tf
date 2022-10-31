# Bucket Iam
resource "google_storage_bucket_iam_policy" "policy" {
    bucket = google_storage_bucket.default.name
    role = "roles/storage.admin"
    members = [
      "allUsers", "allAuthenticatedUsers"
    ]
}

# Project metadata 
resource "google_compute_project_metadata_item" "default" {
  key   = "enable-oslogin"
  value = "false"
}

# Project IAM 
resource "google_project_iam_policy" "project" {
  project     = "your-project-id"
  policy_data = "${data.google_iam_policy.admin.policy_data}"
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/compute.admin"

    members = [
      "user:jane@example.com",
    ]

    condition {
      title       = "expires_after_2019_12_31"
      description = "Expiring at midnight of 2019-12-31"
      expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
    }
  }
}

# Project Audit Logs

resource "google_project_iam_audit_config" "project" {
  project = "your-project-id"
  service = "allServices"
  audit_log_config {
    log_type = "ADMIN_READ"
  }
  audit_log_config {
    log_type = "DATA_READ"
    exempted_members = [
      "user:joebloggs@hashicorp.com",
    ]
  }
}


# Api keys

# Android
resource "google_apikeys_key" "primary" {
  name         = "key"
  display_name = "sample-key"
  project      = google_project.basic.name

  restrictions {
    android_key_restrictions {
      allowed_applications {
        package_name     = "com.example.app123"
        sha1_fingerprint = "1699466a142d4682a5f91b50fdf400f2358e2b0b"
      }
    }

    api_targets {
      service = "translate.googleapis.com"
      methods = ["GET*"]
    }
  }
}

# Browser 
resource "google_apikeys_key" "primary" {
  name         = "key"
  display_name = "sample-key"
  project      = google_project.basic.name

  restrictions {
    api_targets {
      service = "translate.googleapis.com"
      methods = ["GET*"]
    }

    browser_key_restrictions {
      allowed_referrers = [".*"]
    }
  }
}

# IOS
resource "google_apikeys_key" "primary" {
  name         = "key"
  display_name = "sample-key"
  project      = google_project.basic.name

  restrictions {
    api_targets {
      service = "translate.googleapis.com"
      methods = ["GET*"]
    }

    ios_key_restrictions {
      allowed_bundle_ids = ["com.google.app.macos"]
    }
  }
}

# Server

resource "google_apikeys_key" "primary" {
  name         = "key"
  display_name = "sample-key"
  project      = google_project.basic.name

  restrictions {
    api_targets {
      service = "translate.googleapis.com"
      methods = ["GET*"]
    }

    server_key_restrictions {
      allowed_ips = ["127.0.0.1"]
    }
  }
}

  
