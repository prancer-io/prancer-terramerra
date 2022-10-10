resource "google_storage_bucket_iam_policy" "policy" {
    bucket = google_storage_bucket.default.name
    role = "roles/storage.admin"
    members = [
      "allUsers", "allAuthenticatedUsers"
    ]
}