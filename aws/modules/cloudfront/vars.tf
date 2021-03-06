variable "enabled" {
  default     = "true"
  description = "Set to false to prevent the module from creating any resources"
}

variable "acm_certificate_arn" {
  description = "Existing ACM Certificate ARN"
  default     = ""
}

variable "aliases" {
  type        = list
  default     = []
  description = "List of aliases. CAUTION! Names MUSTN'T contain trailing `.`"
}

variable "custom_error_response" {
  # http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html#custom-error-pages-procedure
  # https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#custom-error-response-arguments
  description = "(Optional) - List of one or more custom error response element maps"

  type    = list
  default = []
}

variable "web_acl_id" {
  description = "(Optional) - Web ACL ID that can be attached to the Cloudfront distribution"
  default     = ""
}

variable "enable_custom_origin" {
  type = bool
  default = true
}

variable "enable_s3_origin" {
  type = bool
  default = false
}

variable "origin_domain_name" {
  description = "(Required) - The DNS domain name of your custom origin (e.g. website)"
  default     = ""
}

variable "origin_path" {
  description = "(Optional) - An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin"
  default     = ""
}

variable "origin_http_port" {
  description = "(Required) - The HTTP port the custom origin listens on"
  default     = "80"
}

variable "origin_https_port" {
  description = "(Required) - The HTTPS port the custom origin listens on"
  default     = "443"
}

variable "origin_protocol_policy" {
  description = "(Required) - The origin protocol policy to apply to your origin. One of http-only, https-only, or match-viewer"
  default     = "match-viewer"
}

variable "origin_ssl_protocols" {
  description = "(Required) - The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS"
  type        = list
  default     = ["TLSv1", "TLSv1.1", "TLSv1.2"]
}

variable "origin_keepalive_timeout" {
  description = "(Optional) The Custom KeepAlive timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
  default     = "60"
}

variable "origin_read_timeout" {
  description = "(Optional) The Custom Read timeout, in seconds. By default, AWS enforces a limit of 60. But you can request an increase."
  default     = "60"
}

variable "origin_access_identity" {
  description = "(Optional) - The CloudFront origin access identity to associate with the origin."
  default     = ""
}

variable "compress" {
  description = "(Optional) Whether you want CloudFront to automatically compress content for web requests that include Accept-Encoding: gzip in the request header (default: false)"
  default     = "false"
}

variable "field_encrypt" {
  description = "(Optional) - Field level encryption configuration ID"
  default     = ""
}

variable "is_ipv6_enabled" {
  default     = "true"
  description = "State of CloudFront IPv6"
}

variable "default_root_object" {
  default     = "index.html"
  description = "Object that CloudFront return when requests the root URL"
}

variable "comment" {
  default     = "Managed by Terraform"
  description = "Comment for the origin access identity"
}

variable "enable_cf_log" {
  default     = true
  description = "Enable CF logging"
}

variable "log_include_cookies" {
  default     = "false"
  description = "Include cookies in access logs"
}

variable "log_prefix" {
  default     = ""
  description = "Path of logs in S3 bucket"
}

variable "forward_query_string" {
  default     = "false"
  description = "Forward query strings to the origin that is associated with this cache behavior"
}

variable "forward_headers" {
  description = "Specifies the Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers."
  type        = list
  default     = []
}

variable "forward_cookies" {
  description = "Specifies whether you want CloudFront to forward cookies to the origin. Valid options are all, none or whitelist"
  default     = "none"
}

variable "forward_cookies_whitelisted_names" {
  type        = list
  description = "List of forwarded cookie names"
  default     = []
}

variable "price_class" {
  default     = "PriceClass_100"
  description = "Price class for this distribution: `PriceClass_All`, `PriceClass_200`, `PriceClass_100`"
}

variable "viewer_minimum_protocol_version" {
  description = "(Optional) The minimum version of the SSL protocol that you want CloudFront to use for HTTPS connections."
  default     = "TLSv1"
}

variable "viewer_protocol_policy" {
  description = "allow-all, redirect-to-https"
  default     = "redirect-to-https"
}

variable "allowed_methods" {
  type        = list
  default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
  description = "List of allowed methods (e.g. ` GET, PUT, POST, DELETE, HEAD`) for AWS CloudFront"
}

variable "cached_methods" {
  type        = list
  default     = ["GET", "HEAD"]
  description = "List of cached methods (e.g. ` GET, PUT, POST, DELETE, HEAD`)"
}

variable "default_ttl" {
  default     = "60"
  description = "Default amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "min_ttl" {
  default     = "0"
  description = "Minimum amount of time that you want objects to stay in CloudFront caches"
}

variable "max_ttl" {
  default     = "31536000"
  description = "Maximum amount of time (in seconds) that an object is in a CloudFront cache"
}

variable "geo_restriction_type" {
  # e.g. "whitelist"
  default     = "none"
  description = "Method that use to restrict distribution of your content by country: `none`, `whitelist`, or `blacklist`"
}

variable "geo_restriction_locations" {
  type = list
  default     = []
  description = "List of country codes for which  CloudFront either to distribute content (whitelist) or not distribute your content (blacklist)"
}

variable "bucket" {
  description = "bucket"
}

variable "origin_id" {
  description = "origin_id"
}

variable "target_origin_id" {
  description = "target_origin_id"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`)"
}
