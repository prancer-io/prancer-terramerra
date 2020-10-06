output "s3_bucket_id" {
  description = "ID of generated S3 bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "s3_bucket_arn" {
  description = "ARN of generated S3 bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}
