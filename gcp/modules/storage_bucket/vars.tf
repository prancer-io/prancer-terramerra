variable "name" {
  description = "Bucket name."
  type        = string
}

variable "project_id" {
  description = "Bucket project id."
  type        = string
  default     = null
}

variable "location" {
  description = "Bucket location."
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "Bucket storage class."
  type        = string
  default     = "MULTI_REGIONAL"
}

variable "labels" {
  description = "Labels to be attached to the buckets"
  type        = map
  default     = {}
}

variable "force_destroy" {
  description = "Optional boolean, defaults to false."
  type        = bool
  default     = false
}

variable "bucket_policy_only" {
  description = "Disable ad-hoc ACLs on specified buckets. Defaults to true."
  type        = bool
  default     = true
}

variable "versioning" {
  description = "Optional boolean, defaults to false."
  type        = bool
  default     = false
}

variable "encryption_key_names" {
  description = "Optional map of lowercase unprefixed name => string, empty strings are ignored."
  type        = map
  default     = {}
}

variable "cors" {
  description = "Map of maps of mixed type attributes for CORS values. See appropriate attribute types here: https://www.terraform.io/docs/providers/google/r/storage_bucket.html#cors"
  type        = any
  default     = {}
}

variable "website" {
  type        = any
  default     = {}
  description = "Map of website values. Supported attributes: main_page_suffix, not_found_page"
}
