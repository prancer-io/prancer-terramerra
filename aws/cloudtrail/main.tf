data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "s3" {
  bucket        = "tf-s3-trail"
  force_destroy = true

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:GetBucketAcl",
            "Resource": "arn:aws:s3:::tf-s3-trail"
        },
        {
            "Sid": "AWSCloudTrailWrite",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::tf-s3-trail/prefix/AWSLogs/${data.aws_caller_identity.current.account_id}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
    ]
}
POLICY
  logging {
    target_bucket = "String<The name of the bucket that will receive the log objects>"
    target_prefix = "String< To specify a key prefix for log objects>"
  }
}

module "cloudtrail" {
  source                        = "../modules/cloudtrail"
  name                          = var.name
  enable_logging                = var.enable_logging
  s3_bucket_name                = aws_s3_bucket.s3.id
  s3_key_prefix                 = var.s3_key_prefix
  enable_log_file_validation    = var.enable_log_file_validation
  is_multi_region_trail         = var.is_multi_region_trail
  include_global_service_events = var.include_global_service_events
  cloud_watch_logs_role_arn     = var.cloud_watch_logs_role_arn
  cloud_watch_logs_group_arn    = var.cloud_watch_logs_group_arn
  tags                          = var.tags
  kms_key_arn                   = var.kms_key_arn
  is_organization_trail         = var.is_organization_trail
  event_selector                = var.event_selector
}
