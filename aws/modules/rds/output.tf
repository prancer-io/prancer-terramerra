output "this_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.rds.arn
}

output "this_db_instance_address" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.rds.address
}
