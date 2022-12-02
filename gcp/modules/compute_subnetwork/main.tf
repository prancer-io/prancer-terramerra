resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.location
  network       = var.network_id

  log_config {
  }

  private_ip_google_access = var.private_ip_google_access 
}
