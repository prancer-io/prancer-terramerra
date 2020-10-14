project    = "learning-269422"
location   = "us-central1"

k8s_name                           = "prancer-k8s"
k8s_enable_kubernetes_alpha        = false
k8s_enable_legacy_abac             = false
k8s_network                        = null
k8s_network_policy_enabled         = true
k8s_private_cluster_config         = [{
  enable_private_nodes = true
}]
k8s_ip_policy_enabled              = false
k8s_ip_policy                      = {}
k8s_network_policy_config_disabled = true
k8s_http_load_balancing_disabled   = true
k8s_username                       = ""
k8s_password                       = ""
k8s_certificate                    = false
k8s_pod_security_enabled           = true
k8s_db_encryption                  = [{
  state = "DECRYPTED"
  key_name = ""
}]
k8s_enable_binary_auth             = false
k8s_monitoring_service             = "monitoring.googleapis.com/kubernetes"
k8s_logging_service                = "logging.googleapis.com/kubernetes"
k8s_resource_labels                = {}
k8s_node_count                     = 2
k8s_image_type                     = "UBUNTU"
k8s_preemptible                    = true
k8s_machine_type                   = "e2-medium"
k8s_metadata                       = {
  disable-legacy-endpoints = "true"
}
