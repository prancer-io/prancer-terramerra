module "network" {
  source                         = "../modules/compute_instance/"
  vm_name                        = var.vm_name
  machine_type                   = var.machine_type
  zone                           = var.zone
  vm_tags                        = var.vm_tags
  vm_image                       = var.vm_image
  scheduling_enabled             = var.scheduling_enabled
  scheduling_preemptible         = var.scheduling_preemptible
  scheduling_on_host_maintenance = var.scheduling_on_host_maintenance
  scheduling_automatic_restart   = var.scheduling_automatic_restart
  network                        = var.network
  subnetwork                     = var.subnetwork
  can_ip_forward                 = var.can_ip_forward
  vm_metadata                    = var.vm_metadata
  metadata_startup_script        = var.metadata_startup_script
  labels                         = var.labels
}
