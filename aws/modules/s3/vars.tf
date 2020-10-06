variable "bucket_name" {
  description = "A descriptive name for the S3 instance"
}

variable "bucket_acl" {
  description = "The access control list assigned to this bucket"
  default     = "private"
}

variable "acceleration_status" {
  description = "Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended."
  default     = "Suspended"
}

variable "versioning_enabled" {
  description = "If versioning is set for buckets in case of accidental deletion"
  default     = false
}

variable "cors_allowed_headers" {
  description = "Specifies which headers are allowed."
  default     = ["Authorization"]
}

variable "cors_allowed_methods" {
  description = "Specifies which methods are allowed. Can be GET, PUT, POST, DELETE or HEAD."
  default     = ["GET"]
}

variable "cors_allowed_origins" {
  description = "Specifies which origins are allowed."
  default     = ["*"]
}

variable "cors_expose_headers" {
  description = "Specifies expose header in the response."
  default     = []
}

variable "cors_max_age_seconds" {
  description = "Specifies time in seconds that browser can cache the response for a preflight request."
  default     = "3000"
}

variable "lifecycle_infrequent_storage_transition_enabled" {
  description = "Specifies infrequent storage transition lifecycle rule status."
  default     = false
}

variable "lifecycle_infrequent_storage_object_prefix" {
  description = "Object key prefix identifying one or more objects to which the lifecycle rule applies."
  default     = ""
}

variable "lifecycle_infrequent_storage_object_tags" {
  description = "Object tags to filter on for the transition to infrequent storage lifecycle rule."
  default     = {}
}

variable "lifecycle_days_to_infrequent_storage_transition" {
  description = "Specifies the number of days after object creation when it will be moved to standard infrequent access storage."
  default     = "60"
}

variable "lifecycle_glacier_transition_enabled" {
  description = "Specifies Glacier transition lifecycle rule status."
  default     = false
}

variable "lifecycle_glacier_object_prefix" {
  description = "Object key prefix identifying one or more objects to which the lifecycle rule applies."
  default     = ""
}

variable "lifecycle_glacier_object_tags" {
  description = "Object tags to filter on for the transition to glacier lifecycle rule."
  default     = {}
}

variable "lifecycle_days_to_glacier_transition" {
  description = "Specifies the number of days after object creation when it will be moved to Glacier storage."
  default     = "180"
}

variable "transition_noncurrent_versions" {
  description = "Allow lifecycle rules to apply for all non-current version objects"
  default     = true
}

variable "lifecycle_expiration_enabled" {
  description = "Specifies expiration lifecycle rule status."
  default     = false
}

variable "lifecycle_expiration_object_prefix" {
  description = "Object key prefix identifying one or more objects to which the lifecycle rule applies."
  default     = ""
}

variable "lifecycle_expiration_object_tags" {
  description = "Object tags to filter on for the expire object lifecycle rule."
  default     = {}
}

variable "expire_noncurrent_versions" {
  description = "Allow expiration/retention rules to apply for all non-current version objects"
  default     = true
}

variable "lifecycle_days_to_expiration" {
  description = "Specifies the number of days after object creation when the object expires."
  default     = "365"
}

variable "server_side_encryption_configuration" {
  description = "Provides access to override the server side encryption configuration"
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}
