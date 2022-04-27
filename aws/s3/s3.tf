
resource "aws_s3_bucket" "a" {
  bucket = "my-tf-test-bucket-a"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  replication_configuration {
    rules {
      destination {
        bucket = "String<The ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule>"
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
  replication_configuration {
    rules {
      destination {
        bucket = "String<The ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule>"
      }
    }
  }
}