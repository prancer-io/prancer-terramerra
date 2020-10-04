output "id" {
  value       = aws_cloudtrail.cloudtrail.id
  description = "The name of the trail"
}

output "home_region" {
  value       = aws_cloudtrail.cloudtrail.home_region
  description = "The region in which the trail was created"
}

output "arn" {
  value       = aws_cloudtrail.cloudtrail.arn
  description = "The Amazon Resource Name of the trail"
}
