output "id" {
  description = "The ID of the ECS cluster"
  value       = aws_ecs_cluster.ecs.name
}

output "arn" {
  description = "The ARN of the ECS cluster"
  value       = aws_ecs_cluster.ecs.name
}

output "name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.ecs.name
}
