resource "aws_s3_bucket" "s3bucket" {
  bucket = var.bucket
  acl    = "public-read"

  website {
    redirect_all_requests_to = "index.html"
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["*"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicReadForGetBucketObjects",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket}/*"
        }
    ]
}
EOF
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "String<The AWS KMS master key ID used for the SSE-KMS encryption>"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

module "cloudfront" {
  source                            = "../modules/cloudfront"
  enabled                           = var.enabled
  is_ipv6_enabled                   = var.is_ipv6_enabled
  comment                           = var.comment
  default_root_object               = var.default_root_object
  price_class                       = var.price_class
  enable_cf_log                     = var.enable_cf_log
  log_include_cookies               = var.log_include_cookies
  bucket                            = aws_s3_bucket.s3bucket.bucket_domain_name
  log_prefix                        = var.log_prefix
  aliases                           = var.aliases
  custom_error_response             = var.custom_error_response
  enable_custom_origin              = var.enable_custom_origin
  enable_s3_origin                  = var.enable_s3_origin
  origin_domain_name                = aws_s3_bucket.s3bucket.website_endpoint
  origin_id                         = "S3-${aws_s3_bucket.s3bucket.bucket}"
  origin_path                       = var.origin_path
  origin_http_port                  = var.origin_http_port
  origin_https_port                 = var.origin_https_port
  origin_protocol_policy            = var.origin_protocol_policy
  origin_ssl_protocols              = var.origin_ssl_protocols
  origin_keepalive_timeout          = var.origin_keepalive_timeout
  origin_read_timeout               = var.origin_read_timeout
  origin_access_identity            = var.origin_access_identity
  acm_certificate_arn               = var.acm_certificate_arn
  viewer_minimum_protocol_version   = var.viewer_minimum_protocol_version
  allowed_methods                   = var.allowed_methods
  cached_methods                    = var.cached_methods
  target_origin_id                  = "S3-${aws_s3_bucket.s3bucket.bucket}"
  compress                          = var.compress
  field_encrypt                     = var.field_encrypt
  forward_headers                   = var.forward_headers
  forward_query_string              = var.forward_query_string
  forward_cookies                   = var.forward_cookies
  forward_cookies_whitelisted_names = var.forward_cookies_whitelisted_names
  viewer_protocol_policy            = var.viewer_protocol_policy
  default_ttl                       = var.default_ttl
  min_ttl                           = var.min_ttl
  max_ttl                           = var.max_ttl
  web_acl_id                        = var.web_acl_id
  geo_restriction_type              = var.geo_restriction_type
  geo_restriction_locations         = var.geo_restriction_locations
  tags                              = var.tags
}
