resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.vm_tags

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  dynamic "scheduling" {
    for_each = var.scheduling_enabled ? [1] : []

    content {
      preemptible         = var.scheduling_preemptible
      on_host_maintenance = var.scheduling_on_host_maintenance
      automatic_restart   = var.scheduling_automatic_restart
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config = var.vm_access_config
  }
  shielded_instance_config {
    enable_secure_boot = var.enable_secure_boot
  }
  service_account {
    email = var.email
    scopes = var.scopes
  }
  
  can_ip_forward = var.can_ip_forward

  metadata = var.vm_metadata

  metadata_startup_script = var.metadata_startup_script

  labels = var.labels
}
