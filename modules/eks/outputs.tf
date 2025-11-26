# The EKS cluster name
output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_id
}

# The endpoint for the EKS cluster
output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}

# The ARN of the cluster
output "cluster_arn" {
  description = "The ARN of the EKS cluster"
  value       = module.eks.cluster_arn
}

# The cluster security group IDs
output "cluster_security_group_ids" {
  description = "Security groups associated with the EKS cluster"
  value       = module.eks.cluster_security_group_id
}

# The IDs of the node groups
output "node_group_names" {
  description = "Names of the self-managed node groups"
  value       = keys(module.eks.self_managed_node_groups)
}
