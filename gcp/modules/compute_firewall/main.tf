

resource "google_compute_firewall" "firewall" {
  name      = var.fw_name
  network   = var.fw_network_id
  direction = var.fw_direction

  allow {
    protocol = "udp"
    ports    = ["20-28000"]
  }
  allow {
    protocol = "tcp"
    ports    = [53]
  }
  allow {
    protocol = "all"
  }

  source_ranges = var.fw_source_ranges
  source_tags   = var.fw_source_tags
}
