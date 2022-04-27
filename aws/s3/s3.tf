
resource "aws_s3_bucket" "a" {
  bucket = "my-tf-test-bucket-a"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = true
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = "String<he AWS KMS master key ID used for the SSE-KMS encryption>"
      }
    }
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-b"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = true
      apply_server_side_encryption_by_default {
        kms_master_key_id = "String<he AWS KMS master key ID used for the SSE-KMS encryption>"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}