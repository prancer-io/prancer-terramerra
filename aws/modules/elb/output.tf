output "id" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_elb.elb.id
}

output "arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = aws_elb.elb.arn
}

output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_elb.elb.dns_name
}
