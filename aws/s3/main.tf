module "s3_bucket" {
  source  = "../modules/s3"
  bucket_name                                     = var.bucket_name
  bucket_acl                                      = var.bucket_acl
  acceleration_status                             = var.acceleration_status
  versioning_enabled                              = var.versioning_enabled
  cors_allowed_headers                            = var.cors_allowed_headers
  cors_allowed_methods                            = var.cors_allowed_methods
  cors_allowed_origins                            = var.cors_allowed_origins
  cors_expose_headers                             = var.cors_expose_headers
  cors_max_age_seconds                            = var.cors_max_age_seconds
  lifecycle_infrequent_storage_transition_enabled = var.lifecycle_infrequent_storage_transition_enabled
  lifecycle_infrequent_storage_object_prefix      = var.lifecycle_infrequent_storage_object_prefix
  lifecycle_infrequent_storage_object_tags        = var.lifecycle_infrequent_storage_object_tags
  lifecycle_days_to_infrequent_storage_transition = var.lifecycle_days_to_infrequent_storage_transition
  lifecycle_glacier_transition_enabled            = var.lifecycle_glacier_transition_enabled
  lifecycle_glacier_object_prefix                 = var.lifecycle_glacier_object_prefix
  lifecycle_glacier_object_tags                   = var.lifecycle_glacier_object_tags
  lifecycle_days_to_glacier_transition            = var.lifecycle_days_to_glacier_transition
  transition_noncurrent_versions                  = var.transition_noncurrent_versions
  lifecycle_expiration_enabled                    = var.lifecycle_expiration_enabled
  lifecycle_expiration_object_prefix              = var.lifecycle_expiration_object_prefix
  lifecycle_expiration_object_tags                = var.lifecycle_expiration_object_tags
  expire_noncurrent_versions                      = var.expire_noncurrent_versions
  lifecycle_days_to_expiration                    = var.lifecycle_days_to_expiration
  server_side_encryption_configuration            = var.server_side_encryption_configuration
  enable_logging                                  = var.enable_logging
  target_bucket                                   = var.target_bucket
  target_prefix                                   = var.target_prefix
  enable_website                                  = var.enable_website
  redirect_all_requests_to                        = var.redirect_all_requests_to
  tags                                            = var.tags
}

module "s3_policy" {
  source       = "../modules/s3policy"
  s3_bucket_id = module.s3_bucket.s3_bucket_id
  s3_policy    = var.s3_policy
}

module "s3_policy_sslonly" {
  source       = "../modules/s3policy"
  s3_bucket_id = module.s3_bucket.s3_bucket_id
  s3_policy    = var.s3_policy_sslonly
}

module "s3_bucket_2" {
  source  = "../modules/s3"
  bucket_name                                     = "prancer-s3-bucket-2"
  bucket_acl                                      = var.bucket_acl
  acceleration_status                             = var.acceleration_status
  versioning_enabled                              = var.versioning_enabled
  cors_allowed_headers                            = var.cors_allowed_headers
  cors_allowed_methods                            = var.cors_allowed_methods
  cors_allowed_origins                            = var.cors_allowed_origins
  cors_expose_headers                             = var.cors_expose_headers
  cors_max_age_seconds                            = var.cors_max_age_seconds
  lifecycle_infrequent_storage_transition_enabled = var.lifecycle_infrequent_storage_transition_enabled
  lifecycle_infrequent_storage_object_prefix      = var.lifecycle_infrequent_storage_object_prefix
  lifecycle_infrequent_storage_object_tags        = var.lifecycle_infrequent_storage_object_tags
  lifecycle_days_to_infrequent_storage_transition = var.lifecycle_days_to_infrequent_storage_transition
  lifecycle_glacier_transition_enabled            = var.lifecycle_glacier_transition_enabled
  lifecycle_glacier_object_prefix                 = var.lifecycle_glacier_object_prefix
  lifecycle_glacier_object_tags                   = var.lifecycle_glacier_object_tags
  lifecycle_days_to_glacier_transition            = var.lifecycle_days_to_glacier_transition
  transition_noncurrent_versions                  = var.transition_noncurrent_versions
  lifecycle_expiration_enabled                    = var.lifecycle_expiration_enabled
  lifecycle_expiration_object_prefix              = var.lifecycle_expiration_object_prefix
  lifecycle_expiration_object_tags                = var.lifecycle_expiration_object_tags
  expire_noncurrent_versions                      = var.expire_noncurrent_versions
  lifecycle_days_to_expiration                    = var.lifecycle_days_to_expiration
  server_side_encryption_configuration            = var.server_side_encryption_configuration
  enable_logging                                  = var.enable_logging
  target_bucket                                   = var.target_bucket
  target_prefix                                   = var.target_prefix
  enable_website                                  = var.enable_website
  redirect_all_requests_to                        = var.redirect_all_requests_to
  tags                                            = var.tags
}

provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias  = "central"
  region = "eu-central-1"
}

resource "aws_iam_role" "replication" {
  name = "tf-iam-role-replication-12345"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY
}

resource "aws_iam_policy" "replication" {
  name = "tf-iam-role-policy-replication-12345"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetReplicationConfiguration",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.source.arn}"
      ]
    },
    {
      "Action": [
        "s3:GetObjectVersionForReplication",
        "s3:GetObjectVersionAcl",
         "s3:GetObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.source.arn}/*"
      ]
    },
    {
      "Action": [
        "s3:ReplicateObject",
        "s3:ReplicateDelete",
        "s3:ReplicateTags"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.destination.arn}/*"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "replication" {
  role       = aws_iam_role.replication.name
  policy_arn = aws_iam_policy.replication.arn
}

resource "aws_s3_bucket" "destination" {
  bucket = "tf-test-bucket-destination-12345"
}

resource "aws_s3_bucket_versioning" "destination" {
  bucket = aws_s3_bucket.destination.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "source" {
  provider = aws.central
  bucket   = "tf-test-bucket-source-12345"
}

resource "aws_s3_bucket_acl" "source_bucket_acl" {
  provider = aws.central

  bucket = aws_s3_bucket.source.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "source" {
  provider = aws.central

  bucket = aws_s3_bucket.source.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_replication_configuration" "replication" {
  provider = aws.central
  # Must have bucket versioning enabled first
  depends_on = [aws_s3_bucket_versioning.source]

  role   = aws_iam_role.replication.arn
  bucket = aws_s3_bucket.source.id

  rule {
    id = "foobar"

    filter {
      prefix = "foo"
    }

    status = "Enabled"

    destination {
      bucket        = aws_s3_bucket.destination.arn
      storage_class = "STANDARD"
    }
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.source.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_object_lock_configuration" "example" {
  bucket = aws_s3_bucket.source.bucket

  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}

resource "aws_s3_bucket_cors_configuration" "example" {
  bucket = aws_s3_bucket.source.bucket

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://s3-website-test.hashicorp.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}


resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.source.id
  acl    = "private"
}


resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.source.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}

resource "aws_s3_bucket_logging" "example" {
  bucket = aws_s3_bucket.source.id

  target_bucket = aws_s3_bucket.source.id
  target_prefix = "log/"
}

resource "aws_kms_key" "kms" {
  description = "example"
}


resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.source.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.kms.arn
      sse_algorithm     = "aws:kms"
    }
  }
}


