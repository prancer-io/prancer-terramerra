output "arn" {
  description = "The Redshift cluster ARN"
  value       = aws_redshift_cluster.redshift.arn
}

output "id" {
  description = "The Redshift cluster ID"
  value       = aws_redshift_cluster.redshift.id
}

output "cluster_identifier" {
  description = "The Redshift cluster identifier"
  value       = aws_redshift_cluster.redshift.cluster_identifier
}

output "cluster_type" {
  description = "The Redshift cluster type"
  value       = aws_redshift_cluster.redshift.cluster_type
}
