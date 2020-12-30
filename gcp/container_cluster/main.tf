resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "prancer_dataset"
  friendly_name               = "prancerd"
  description                 = "Prancer BigData Dataset"
  location                    = "US"
  default_table_expiration_ms = 3600000
}

module "k8s" {
  source                             = "../modules/container_cluster/"
  location                           = var.location
  k8s_name                           = var.k8s_name
  k8s_enable_kubernetes_alpha        = var.k8s_enable_kubernetes_alpha
  k8s_enable_legacy_abac             = var.k8s_enable_legacy_abac
  k8s_network                        = var.k8s_network
  k8s_network_policy_enabled         = var.k8s_network_policy_enabled
  master_authorized_networks_config  = var.master_authorized_networks_config
  k8s_ip_policy_enabled              = var.k8s_ip_policy_enabled
  k8s_ip_policy                      = var.k8s_ip_policy
  k8s_network_policy_config_disabled = var.k8s_network_policy_config_disabled
  k8s_http_load_balancing_disabled   = var.k8s_http_load_balancing_disabled
  k8s_username                       = var.k8s_username
  k8s_password                       = var.k8s_password
  k8s_certificate                    = var.k8s_certificate
  k8s_pod_security_enabled           = var.k8s_pod_security_enabled
  k8s_db_encryption                  = var.k8s_db_encryption
  k8s_monitoring_service             = var.k8s_monitoring_service
  k8s_enable_binary_auth             = var.k8s_enable_binary_auth
  k8s_logging_service                = var.k8s_logging_service
  k8s_resource_labels                = var.k8s_resource_labels
  k8s_node_count                     = var.k8s_node_count
  node_locations                     = var.node_locations
  k8s_image_type                     = var.k8s_image_type
  k8s_preemptible                    = var.k8s_preemptible
  k8s_machine_type                   = var.k8s_machine_type
  enable_network_egress_metering     = var.enable_network_egress_metering
  enable_intranode_visibility        = var.enable_intranode_visibility
  k8s_bigquery_dataset               = google_bigquery_dataset.dataset.dataset_id
  k8s_metadata                       = var.k8s_metadata
}
