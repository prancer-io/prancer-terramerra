module "dns" {
  source          = "../modules/dns_managed_zone/"
  dns_zone        = var.dns_zone
  dns_name        = var.dns_name
  dns_description = var.dns_description
  dns_labels      = var.dns_labels
  dnssec          = var.dnssec
  dnssec_keys     = var.dnssec_keys
}
