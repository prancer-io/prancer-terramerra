resource "aws_elasticsearch_domain" "esearch" {
  domain_name           = var.domain_name
  elasticsearch_version = var.elasticsearch_version

  advanced_options = var.advanced_options

  advanced_security_options {
    enabled                        = var.advanced_security_options_enabled
    internal_user_database_enabled = var.advanced_security_options_internal_user_database_enabled
    master_user_options {
      master_user_arn      = var.advanced_security_options_master_user_arn
      master_user_name     = var.advanced_security_options_master_user_name
      master_user_password = var.advanced_security_options_master_user_password
    }
  }

  ebs_options {
    ebs_enabled = var.ebs_volume_size > 0 ? true : false
    volume_size = var.ebs_volume_size
    volume_type = var.ebs_volume_type
    iops        = var.ebs_iops
  }

  encrypt_at_rest {
    enabled    = var.encrypt_at_rest_enabled
    kms_key_id = var.encrypt_at_rest_kms_key_id
  }

  domain_endpoint_options {
    enforce_https       = var.domain_endpoint_options_enforce_https
    tls_security_policy = var.domain_endpoint_options_tls_security_policy
  }

  cluster_config {
    instance_count           = var.instance_count
    instance_type            = var.instance_type
    dedicated_master_enabled = var.dedicated_master_enabled
    dedicated_master_count   = var.dedicated_master_count
    dedicated_master_type    = var.dedicated_master_type
    zone_awareness_enabled   = var.zone_awareness_enabled
    warm_enabled             = var.warm_enabled
    warm_count               = var.warm_count
    warm_type                = var.warm_type

    dynamic "zone_awareness_config" {
      for_each = var.zone_awareness_config
      content {
        availability_zone_count = zone_awareness_config.value.availability_zone_count
      }
    }
  }

  node_to_node_encryption {
    enabled = var.node_to_node_encryption_enabled
  }

  dynamic "vpc_options" {
    for_each = var.vpc_enabled ? [true] : []

    content {
      security_group_ids = [join("", aws_security_group.default.*.id)]
      subnet_ids         = var.subnet_ids
    }
  }

  snapshot_options {
    automated_snapshot_start_hour = var.automated_snapshot_start_hour
  }

  dynamic "cognito_options" {
    for_each = var.cognito_authentication_enabled ? [true] : []
    content {
      enabled          = true
      user_pool_id     = var.cognito_user_pool_id
      identity_pool_id = var.cognito_identity_pool_id
      role_arn         = var.cognito_iam_role_arn
    }
  }

  log_publishing_options {
    enabled                  = var.log_publishing_index_enabled
    log_type                 = "INDEX_SLOW_LOGS"
    cloudwatch_log_group_arn = var.log_publishing_index_cloudwatch_log_group_arn
  }

  log_publishing_options {
    enabled                  = var.log_publishing_search_enabled
    log_type                 = "SEARCH_SLOW_LOGS"
    cloudwatch_log_group_arn = var.log_publishing_search_cloudwatch_log_group_arn
  }

  log_publishing_options {
    enabled                  = var.log_publishing_application_enabled
    log_type                 = "ES_APPLICATION_LOGS"
    cloudwatch_log_group_arn = var.log_publishing_application_cloudwatch_log_group_arn
  }

  tags = var.tags
  encrypt_at_rest {
    kms_key_id = "String<KMS key id to encrypt the Elasticsearch domain>"
    enabled    = true
  }
}
