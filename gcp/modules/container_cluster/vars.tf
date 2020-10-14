variable "location" {
  type = string
  default = "us-central1"
}
variable "k8s_name" {
  type = string
  default = ""
}
variable "k8s_enable_kubernetes_alpha" {
  type = bool
  default = false
}
variable "k8s_enable_legacy_abac" {
  type = bool
  default = false
}
variable "k8s_network" {
  type = string
  default = null
}
variable "k8s_network_policy_enabled" {
  type = bool
  default = false
}
variable "k8s_private_cluster_config" {
  type = list
  default = []
}
variable "k8s_ip_policy_enabled" {
  type = bool
  default = false
}
variable "k8s_ip_policy" {
  type = map
  default = {
    cluster_ipv4_cidr_block = "192.168.0.0/16"
  }
}
variable "k8s_network_policy_config_disabled" {
  type = bool
  default = true
}
variable "k8s_http_load_balancing_disabled" {
  type = bool
  default = true
}
variable "k8s_username" {
  type = string
  default = ""
}
variable "k8s_password" {
  type = string
  default = ""
}
variable "k8s_certificate" {
  type = string
  default = "false"
}
variable "k8s_pod_security_enabled" {
  type = bool
  default = true
}
variable "k8s_db_encryption" {
  type = list
  default = []
}
variable "k8s_enable_binary_auth" {
  type = bool
  default = false
}
# variable "k8s_istio_disabled" {
#   type = bool
#   default = true
# }
# variable "k8s_istio_auth" {
#   type = string
#   default = null
# }
variable "k8s_monitoring_service" {
  type = string
  default = "monitoring.googleapis.com/kubernetes"
}
variable "k8s_logging_service" {
  type = string
  default = "logging.googleapis.com/kubernetes"
}
variable "k8s_resource_labels" {
  type = map
  default = {}
}
variable "k8s_node_count" {
  type = number
  default = 1
}
variable "k8s_image_type" {
  type = string
  default = "UBUNTU"
}
variable "k8s_preemptible" {
  type = bool
  default = true
}
variable "k8s_machine_type" {
  type = string
  default = "e2-medium"
}
variable "k8s_service_account" {
  type = string
  default = null
}
variable "k8s_addons" {
  type = list
  default = []
}
variable "k8s_metadata" {
  type = map
  default = {}
}
