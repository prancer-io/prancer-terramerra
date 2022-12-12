resource "google_container_cluster" "primary" {
  name     = var.k8s_name
  location = var.location

  remove_default_node_pool = true
  initial_node_count       = 1

  enable_kubernetes_alpha = var.k8s_enable_kubernetes_alpha
  enable_legacy_abac      = var.k8s_enable_legacy_abac

  network = var.k8s_network

  network_policy {
    enabled = var.k8s_network_policy_enabled
  }

  # dynamic "private_cluster_config" {
  #   for_each = var.k8s_private_cluster_config
  #   iterator = private

  #   content {
  #     enable_private_nodes    = lookup(private.value, "enable_private_nodes", null)
  #     enable_private_endpoint = lookup(private.value, "enable_private_endpoint", null)
  #     master_ipv4_cidr_block  = lookup(private.value, "master_ipv4_cidr_block", null)
  #   }
  # }
  private_cluster_config {
    enable_private_nodes = false
  }

  dynamic "ip_allocation_policy" {
    for_each = var.k8s_ip_policy_enabled ? [1] : []

    content {
      cluster_secondary_range_name  = lookup(var.k8s_ip_policy, "cluster_secondary_range_name", null)
      services_secondary_range_name = lookup(var.k8s_ip_policy, "services_secondary_range_name", null)
      cluster_ipv4_cidr_block       = lookup(var.k8s_ip_policy, "cluster_ipv4_cidr_block", null)
      services_ipv4_cidr_block      = lookup(var.k8s_ip_policy, "services_ipv4_cidr_block", null)
    }
  }

  addons_config {
    network_policy_config {
      disabled = var.k8s_network_policy_config_disabled
    }

    http_load_balancing {
      disabled = var.k8s_http_load_balancing_disabled
    }

    # dynamic "istio_config" {
    #   for_each = var.k8s_istio_disabled ? [1] : []

    #   content {
    #     disabled = var.k8s_istio_disabled
    #     auth     = var.k8s_istio_auth
    #   }
    # }
  }

  master_auth {
    username = var.k8s_username
    password = var.k8s_password

    client_certificate_config {
      issue_client_certificate = var.k8s_certificate
    }
  }

  dynamic "master_authorized_networks_config" {
    for_each = var.master_authorized_networks_config ? [1] : []
    content {}
  }

  pod_security_policy_config {
    enabled = var.k8s_pod_security_enabled
  }

  dynamic "database_encryption" {
    for_each = var.k8s_db_encryption
    iterator = encrypt

    content {
      state    = lookup(encrypt.value, "state", null)
      key_name = lookup(encrypt.value, "key_name", null)
    }
  }

  resource_usage_export_config {
    enable_network_egress_metering = var.enable_network_egress_metering

    bigquery_destination {
      dataset_id = var.k8s_bigquery_dataset
    }
  }

  enable_binary_authorization = var.k8s_enable_binary_auth
  enable_intranode_visibility = var.enable_intranode_visibility

  monitoring_service = var.k8s_monitoring_service
  logging_service    = var.k8s_logging_service

  resource_labels = var.k8s_resource_labels
}

resource "google_container_node_pool" "nodes" {
  name           = "${var.k8s_name}-node"
  location       = var.location
  cluster        = google_container_cluster.primary.name
  node_count     = var.k8s_node_count
  node_locations = var.node_locations

  node_config {
    image_type            = var.k8s_image_type
    preemptible           = var.k8s_preemptible
    machine_type          = var.k8s_machine_type
    service_account       = var.k8s_service_account
    metadata              = var.k8s_metadata
    enable_shielded_nodes = false
  management {
    auto_repair = false
    auto_upgrade = false
  }
    shielded_instance_config {
      enable_secure_boot          = false
      enable_integrity_monitoring = false
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    workload_metadata_config {
      mode = "gce_metadata"
    }
  }
}
