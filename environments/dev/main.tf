# Call the VPC module
module "vpc" {
  source = "../../modules/vpc"

  name           = var.vpc_name           # matches variable "name"
  cidr           = "10.0.0.0/16"         # matches variable "cidr"
  azs            = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]


  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}

# Call the EKS module and inject the VPC outputs
module "eks" {
  source = "../../modules/eks"

  cluster_name       = "MyEKSCluster"
  environment        = "dev"
  kubernetes_version = var.kubernetes_version

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}