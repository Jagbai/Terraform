variable "environment" {
  description = "Environment name for the VPC (e.g. dev, staging, prod)"
  type        = string
  default = "dev"
  
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "kubernetes_version" {
  description = "EKS Kubernetes version"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  
}