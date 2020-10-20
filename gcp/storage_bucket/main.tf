module "storage_bucket" {
  source               = "../modules/storage_bucket/"
  name                 = var.name
  project_id           = var.project
  location             = var.location
  storage_class        = var.storage_class
  labels               = var.labels
  force_destroy        = var.force_destroy
  bucket_policy_only   = var.bucket_policy_only
  versioning           = var.versioning
  encryption_key_names = var.encryption_key_names
  cors                 = var.cors
  website              = var.website
}
