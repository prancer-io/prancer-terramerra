data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "allUsers", "allAuthenticatedUsers"
    ]
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = google_storage_bucket.default.name
  policy_data = data.google_iam_policy.admin.policy_data
}