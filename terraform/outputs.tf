output "cluster_endpoint" {
  value       = aws_eks_cluster.main.endpoint
  description = "Endpoint for EKS control plane"
}

output "cluster_name" {
  value       = aws_eks_cluster.main.name
  description = "Kubernetes Cluster Name"
}

output "cluster_certificate_authority_data" {
  value       = aws_eks_cluster.main.certificate_authority[0].data
  description = "Nested attribute containing certificate-authority-data for cluster authentication"
}