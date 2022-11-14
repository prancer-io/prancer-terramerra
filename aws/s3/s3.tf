
resource "aws_s3_bucket" "a" {
  bucket = "my-tf-test-bucket-a"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  logging {
    target_bucket = "String<The name of the bucket that will receive the log objects>"
    target_prefix = "String< To specify a key prefix for log objects>"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-b"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  logging {
    target_bucket = "String<The name of the bucket that will receive the log objects>"
    target_prefix = "String< To specify a key prefix for log objects>"
  }
}