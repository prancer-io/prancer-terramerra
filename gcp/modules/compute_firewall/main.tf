

resource "google_compute_firewall" "firewall" {
  name      = var.fw_name
  network   = var.fw_network_id
  direction = var.fw_direction

  allow {
    protocol = "udp"
    ports    = "List<Specify ports/port-range which exclude '23'. Make sure, entry must be either an integer or a range(i.e. String ex. ['12345-12349']).>"
  }
  allow {
    protocol = "tcp"
    ports    = [53]
  }

  source_ranges = var.fw_source_ranges
  source_tags   = var.fw_source_tags
}
