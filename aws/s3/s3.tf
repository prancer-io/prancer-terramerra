
resource "aws_s3_bucket" "a" {
  bucket = "my-tf-test-bucket-a"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-b"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}