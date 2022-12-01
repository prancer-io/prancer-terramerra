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

  scheduling {
    automatic_restart   = false
    on_host_maintenance = null
    preemptible         = true
  }

  network_interface {
    network       = var.network
    subnetwork    = var.subnetwork
    access_config {
      
    }
  }
  shielded_instance_config {
    enable_secure_boot = var.enable_secure_boot
  }
  service_account {
    email  = var.email
    scopes = var.scopes
  }

  can_ip_forward = var.can_ip_forward

  metadata = {
    serial-port-enable     = true
    block-project-ssh-keys = false
  }

  metadata_startup_script = var.metadata_startup_script

  labels = var.labels
}
