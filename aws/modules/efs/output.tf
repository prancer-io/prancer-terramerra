output "arn" {
  value       = aws_efs_file_system.efs.arn
  description = "EFS ARN"
}

output "id" {
  value       = aws_efs_file_system.efs.id
  description = "EFS ID"
}
