resource "aws_eks_cluster" "eks" {
  name                      = var.name
  tags                      = var.tags
  role_arn                  = var.role_arn
  version                   = var.kubernetes_version
  enabled_cluster_log_types = var.enabled_cluster_log_types

  dynamic "encryption_config" {
    for_each = var.cluster_encryption_config_enabled ? [var.cluster_encryption_config] : []
    content {
      resources = lookup(encryption_config.value, "resources")
      provider {
        key_arn = lookup(encryption_config.value, "provider_key_arn")
      }
    }
  }

  vpc_config {
    security_group_ids      = var.security_group_ids
    subnet_ids              = "List<List of subnet IDs>"
    endpoint_private_access = var.endpoint_private_access
    endpoint_public_access  = var.endpoint_public_access
    public_access_cidrs     = var.public_access_cidrs
  }
}
