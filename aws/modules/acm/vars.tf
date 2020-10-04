variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating or accessing any resources"
}

variable "wait_for_certificate_issued" {
  type        = bool
  default     = false
  description = "Whether to wait for the certificate to be issued by ACM (the certificate status changed from `Pending Validation` to `Issued`)"
}

variable "domain_name" {
  type        = string
  description = "A domain name for which the certificate should be issued"
}

variable "validation_method" {
  type        = string
  default     = "DNS"
  description = "Method to use for validation, DNS or EMAIL"
}

variable "subject_alternative_names" {
  type        = list(string)
  default     = []
  description = "A list of domains that should be SANs in the issued certificate"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map('BusinessUnit`,`XYZ`)"
}
