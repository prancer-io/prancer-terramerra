resource "google_compute_firewall" "firewall" {
  name    = var.fw_name
  network = var.fw_network_id

  dynamic "allow" {
    for_each = var.fw_allows

    content {
      protocol = lookup(allow.value, "protocol", "tcp")
      ports    = lookup(allow.value, "ports", null)
    }
  }

  source_tags = var.fw_source_tags
}
