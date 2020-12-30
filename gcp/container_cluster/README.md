# Terramerra: Container Cluster

Compliance code | Filename       | Code snippet problem           | Fixed code
----------------|----------------|--------------------------------|-----------------------------------
PR-GCP-0030-TRF |terraform.tfvars|k8s_service_account = null      |k8s_service_account = SERVICE-ACCOUNT
PR-GCP-0031-TRF |terraform.tfvars|k8s_username = ""               |k8s_username = "username"
=               |                |k8s_password = ""               |k8s_password = "password"
PR-GCP-0032-TRF |terraform.tfvars|k8s_certificate = false         |k8s_certificate = true
PR-GCP-0033-TRF |terraform.tfvars|k8s_ip_policy_enabled = false   |k8s_ip_policy_enabled = true
PR-GCP-0034-TRF |terraform.tfvars|k8s_enable_kubernetes_alpha = true|k8s_enable_kubernetes_alpha = false
PR-GCP-0035-TRF |terraform.tfvars|k8s_http_load_balancing_disabled = true|k8s_http_load_balancing_disabled = false
PR-GCP-0036-TRF |terraform.tfvars|k8s_enable_legacy_abac = true   |k8s_enable_legacy_abac = false
PR-GCP-0037-TRF |terraform.tfvars|master_authorized_networks_config = false|master_authorized_networks_config = true
PR-GCP-0038-TRF |terraform.tfvars|k8s_network_policy_enabled = false|k8s_network_policy_enabled = true
PR-GCP-0039-TRF |terraform.tfvars|k8s_logging_service = "none"|k8s_logging_service = "logging.googleapis.com/kubernetes"
PR-GCP-0040-TRF |terraform.tfvars|k8s_monitoring_service = "none" |k8s_monitoring_service = "monitoring.googleapis.com/kubernetes"
PR-GCP-0041-TRF |terraform.tfvars|k8s_enable_binary_auth = false  |k8s_enable_binary_auth = true
PR-GCP-0042-TRF |terraform.tfvars|k8s_metadata = {disable-legacy-endpoints = "false"}|k8s_metadata = {disable-legacy-endpoints = "true"}
PR-GCP-0043-TRF |terraform.tfvars|k8s_pod_security_enabled = false|k8s_pod_security_enabled = true
PR-GCP-0045-TRF |terraform.tfvars|enable_network_egress_metering = false|enable_network_egress_metering = true
PR-GCP-0046-TRF |terraform.tfvars|k8s_private_cluster_config = null|k8s_private_cluster_config = [{enable_private_nodes = true}]
PR-GCP-0047-TRF |terraform.tfvars|k8s_private_cluster_config = null|k8s_private_cluster_config = [{enable_private_nodes = true}]
PR-GCP-0048-TRF |terraform.tfvars|k8s_image_type = "UBUNTU"       |k8s_image_type = "COS"
PR-GCP-0049-TRF |terraform.tfvars|k8s_network = null              |k8s_network = "name or self_link of GCE network"
PR-GCP-0051-TRF |terraform.tfvars|k8s_resource_labels = {}        |k8s_resource_labels = {env = "prod"}
PR-GCP-0052-TRF |terraform.tfvars|k8s_db_encryption = [{state = "DECRYPTED" key_name = ""}]|k8s_db_encryption = [{state = "ENCRYPTED" key_name = KEY_NAME}]
PR-GCP-0053-TRF |terraform.tfvars|enable_intranode_visibility = false|enable_intranode_visibility = true
PR-GCP-0054-TRF |terraform.tfvars|k8s_istio_disabled = false      |k8s_istio_disabled = true
PR-GCP-0055-TRF |terraform.tfvars|node_locations = ["us-central1"]|node_locations = ["us-central1", "us-west-2"]
