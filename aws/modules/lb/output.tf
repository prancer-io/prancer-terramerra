output "id" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.lb.id
}

output "arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.lb.arn
}

output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.lb.dns_name
}
