
resource "aws_s3_bucket" "a" {
  bucket = "my-tf-test-bucket-a"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  object_lock_configuration {
    object_lock_enabled = true
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-b"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  object_lock_configuration {
    object_lock_enabled = true
  }
}