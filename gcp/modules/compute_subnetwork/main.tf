resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
  region        = var.location
  network       = var.network_id

  dynamic "log_config" {
    for_each = var.log_enabled ? [1] : []

    content {
      aggregation_interval = var.log_aggregation_interval
      flow_sampling        = var.log_flow_sampling
      metadata             = var.log_metadata
    }
  }

  private_ip_google_access = var.private_ip_google_access 
}
