project    = "learning-269422"
location   = "us-central1"

k8s_name                           = "prancer-k8s"
k8s_enable_kubernetes_alpha        = true
k8s_enable_legacy_abac             = true
k8s_network                        = null
k8s_network_policy_enabled         = true
k8s_private_cluster_config         = null
k8s_ip_policy_enabled              = false
k8s_ip_policy                      = {}
master_authorized_networks_config  = false
k8s_network_policy_config_disabled = true
k8s_http_load_balancing_disabled   = true
k8s_username                       = ""
k8s_password                       = "Root1234"
k8s_certificate                    = false
k8s_pod_security_enabled           = false
k8s_db_encryption                  = [{
  state = "DECRYPTED"
  key_name = ""
}]
k8s_enable_binary_auth             = false
k8s_monitoring_service             = "none"
k8s_logging_service                = "none"
k8s_resource_labels                = {"goog-composer-version" : "1-composer"}
k8s_node_count                     = 3
node_locations                     = ["us-central1-a"]
k8s_image_type                     = "UBUNTU"
k8s_preemptible                    = true
k8s_machine_type                   = "e2-medium"
enable_intranode_visibility        = false
enable_network_egress_metering     = false
k8s_metadata                       = {
  disable-legacy-endpoints = "false"
}
