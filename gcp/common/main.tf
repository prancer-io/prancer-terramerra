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
