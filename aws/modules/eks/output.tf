output "id" {
  description = "The name of the cluster"
  value       = aws_eks_cluster.eks.id
}

output "arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = aws_eks_cluster.eks.arn
}

output "endpoint" {
  description = "The endpoint for the Kubernetes API server"
  value       = aws_eks_cluster.eks.endpoint
}

output "version" {
  description = "The Kubernetes server version of the cluster"
  value       = aws_eks_cluster.eks.version
}
