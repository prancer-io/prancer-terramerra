

resource "google_compute_firewall" "firewall" {
  name      = var.fw_name
  network   = var.fw_network_id
  direction = var.fw_direction

  allow = [var.fw_allows]

  source_ranges = var.fw_source_ranges
  source_tags   = var.fw_source_tags
}
