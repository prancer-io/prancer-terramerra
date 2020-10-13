resource "google_dns_managed_zone" "dns" {
  name        = var.dns_zone
  dns_name    = var.dns_name
  description = var.dns_description
  labels      = var.dns_labels

  dynamic "dnssec_config" {
    for_each = var.dnssec
    iterator = dnssec

    content {
      kind          = dnssec.value.kind
      non_existence = dnssec.value.non_existence
      state         = dnssec.value.state

      dynamic "default_key_specs" {
        for_each = var.dnssec_keys
        iterator = key

        content {
          algorithm  = key.value.algorithm
          key_length = key.value.key_length
          key_type   = key.value.key_type
          kind       = key.value.kind
        }
      }
    }
  }
}
