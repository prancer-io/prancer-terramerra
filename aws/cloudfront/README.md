# Terramerra: Cloudfront

Compliance code | Filename       | Code snippet problem             | Fixed code
----------------|----------------|----------------------------------|---------------------------------
PR-AWS-0015-TRF|terraform.tfvars|field_encrypt = ""                  |field_encrypt = encryption config
PR-AWS-0016-TRF|terraform.tfvars|origin_ssl_protocols = ["SSLv3", "TLSv1.2"]|origin_ssl_protocols = ["TLSv1.2"]
PR-AWS-0017-TRF|terraform.tfvars|enable_cf_log = false               |enable_cf_log = true
PR-AWS-0018-TRF|terraform.tfvars|viewer_protocol_policy = "allow-all"|viewer_protocol_policy = "https-only"
PR-AWS-0019-TRF|terraform.tfvars|viewer_protocol_policy = "allow-all"|viewer_protocol_policy = "https-only"
PR-AWS-0020-TRF|terraform.tfvars|viewer_minimum_protocol_version = "TLSv1"|viewer_minimum_protocol_version = "TLSv1.2_2018"
PR-AWS-0021-TRF|terraform.tfvars|web_acl_id = ""                     |web_acl_id = aws_wafv2_web_acl.example.arn
PR-AWS-0022-TRF|terraform.tfvars|acm_certificate_arn = ""            |acm_certificate_arn = acm_certificate_arn
PR-AWS-0023-TRF|terraform.tfvars|geo_restriction_type = "none"|geo_restriction_type = "none"
PR-AWS-0030-TRF|terraform.tfvars|origin_access_identity = ""       |origin_access_identity = aws_cloudfront_origin_access_identity.default.cloudfront_access_identity_path
=              |                |enable_custom_origin = false        |enable_custom_origin = false
=              |                |enable_s3_origin = true             |enable_s3_origin = true