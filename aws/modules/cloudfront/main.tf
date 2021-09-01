resource "aws_cloudfront_distribution" "cloudfront" {
  enabled             = var.enabled
  is_ipv6_enabled     = var.is_ipv6_enabled
  comment             = var.comment
  default_root_object = var.default_root_object
  price_class         = var.price_class

  dynamic "logging_config" {
    for_each = var.enable_cf_log ? [1] : []
    content {
      include_cookies = var.log_include_cookies
      bucket          = var.bucket
      prefix          = var.log_prefix
    }
  }

  aliases = var.aliases

  origin {
    domain_name = var.origin_domain_name
    origin_id   = var.origin_id
    origin_path = var.origin_path

    dynamic "custom_origin_config" {
      for_each = var.enable_custom_origin ? [1] : []
      content {
        http_port                = var.origin_http_port
        https_port               = var.origin_https_port
        origin_protocol_policy   = var.origin_protocol_policy
        origin_ssl_protocols     = var.origin_ssl_protocols
        origin_keepalive_timeout = var.origin_keepalive_timeout
        origin_read_timeout      = var.origin_read_timeout
      }
    }

    dynamic "s3_origin_config" {
      for_each = var.enable_s3_origin ? [1] : []
      content {
        origin_access_identity = var.origin_access_identity
      }
    }
  }

  viewer_certificate {
    acm_certificate_arn            = var.acm_certificate_arn
    ssl_support_method             = "sni-only"
    minimum_protocol_version       = var.viewer_minimum_protocol_version
    cloudfront_default_certificate = var.acm_certificate_arn == "" ? true : false
  }

  default_cache_behavior {
    allowed_methods           = var.allowed_methods
    cached_methods            = var.cached_methods
    target_origin_id          = var.target_origin_id
    compress                  = var.compress
    field_level_encryption_id = var.field_encrypt

    forwarded_values {
      headers = var.forward_headers

      query_string = var.forward_query_string

      cookies {
        forward           = var.forward_cookies
        whitelisted_names = var.forward_cookies_whitelisted_names
      }
    }

    viewer_protocol_policy = var.viewer_protocol_policy
    default_ttl            = var.default_ttl
    min_ttl                = var.min_ttl
    max_ttl                = var.max_ttl
  }

  web_acl_id = var.web_acl_id

  restrictions {
    geo_restriction {
      restriction_type = var.geo_restriction_type
      locations        = var.geo_restriction_locations
    }
  }

  tags = var.tags
  logging_config "logging_config" {
    bucket = "String<The Amazon S3 bucket to store the access logs in, for example, myawslogbucket.s3.amazonaws.com>"
  }
}
