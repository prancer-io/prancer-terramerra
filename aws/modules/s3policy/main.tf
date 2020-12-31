resource "aws_s3_bucket_policy" "s3policy" {
  bucket = var.s3_bucket_id
  policy = var.s3_policy
}
