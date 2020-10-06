output "id" {
  value       = aws_cloudfront_distribution.cloudfront.id
  description = "ID of AWS CloudFront distribution"
}

output "arn" {
  value       = aws_cloudfront_distribution.cloudfront.arn
  description = "ID of AWS CloudFront distribution"
}

output "status" {
  value       = aws_cloudfront_distribution.cloudfront.status
  description = "Current status of the distribution"
}
