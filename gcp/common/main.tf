resource "google_storage_bucket_iam_policy" "policy" {
    bucket = google_storage_bucket.default.name
    role = "roles/storage.admin"
    members = [
      "allUsers", "allAuthenticatedUsers"
    ]
}

resource "google_compute_project_metadata_item" "default" {
  key   = "my_metadata"
  value = "my_value"
}