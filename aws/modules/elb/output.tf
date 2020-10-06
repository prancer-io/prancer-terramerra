output "id" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.elb.id
}

output "arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_lb.elb.arn
}

output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.elb.dns_name
}
