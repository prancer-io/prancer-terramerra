bucket_name                                     = "prancer-s3-bucket"
bucket_acl                                      = "private"
acceleration_status                             = "Suspended"
versioning_enabled                              = false
cors_allowed_headers                            = ["Authorization"]
cors_allowed_methods                            = ["GET"]
cors_allowed_origins                            = ["*"]
cors_expose_headers                             = []
cors_max_age_seconds                            = 3000
lifecycle_infrequent_storage_transition_enabled = false
lifecycle_infrequent_storage_object_prefix      = ""
lifecycle_infrequent_storage_object_tags        = {}
lifecycle_days_to_infrequent_storage_transition = 60
lifecycle_glacier_transition_enabled            = false
lifecycle_glacier_object_prefix                 = ""
lifecycle_glacier_object_tags                   = {}
lifecycle_days_to_glacier_transition            = 180
transition_noncurrent_versions                  = true
lifecycle_expiration_enabled                    = false
lifecycle_expiration_object_prefix              = ""
lifecycle_expiration_object_tags                = {}
expire_noncurrent_versions                      = true
lifecycle_days_to_expiration                    = 365
server_side_encryption_configuration            = []
enable_logging                                  = false
target_bucket                                   = null
target_prefix                                   = "log/"
enable_website                                  = true
redirect_all_requests_to                        = "https://www.example.com"
s3_policy                                       = <<POLICY
{
  "Id": "PRANCERBUCKETPOLICY",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::prancer-s3-bucket/*"
    }
  ]
}
POLICY
s3_policy_sslonly = <<POLICY
{
  "Id": "sslonly",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "s3-bucket-ssl-requests-only",
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::prancer-s3-bucket/*"
      ],
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Principal": "*"
    }
  ]
}
POLICY

tags                                     = {
  environment = "Production"
  project = "Prancer"
}
