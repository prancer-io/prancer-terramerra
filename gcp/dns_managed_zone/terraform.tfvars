project    = "learning-269422"
location   = "us-central1"

dns_zone        = "prancer-dns-zone"
dns_name        = "prancer-zone.com."
dns_description = "Prancer DNS Zone"
dns_labels      = {}
dnssec = [{
  kind          = "dns#managedZoneDnsSecConfig"
  non_existence = "nsec3"
  state         = "off"
}]
dnssec_keys = [{
  algorithm  = "rsasha256"
  key_length = 2048
  key_type   = "keySigning"
  kind       = "dns#dnsKeySpec"
},{
  algorithm  = "rsasha256"
  key_length = 1024
  key_type   = "zoneSigning"
  kind       = "dns#dnsKeySpec"
}]
