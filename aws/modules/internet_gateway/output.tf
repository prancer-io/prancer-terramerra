output "id" {
  description = "The ID and ARN of the internet gateway."
  value       = aws_internet_gateway.gateway.id
}

output "arn" {
  description = "The ID and ARN of the internet gateway."
  value       = aws_internet_gateway.gateway.arn
}
