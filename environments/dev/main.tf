# Call the VPC module
module "vpc" {
  source = "../../modules/vpc"

  name           = var.vpc_name           # matches variable "name"
  cidr           = "10.0.0.0/16"         # matches variable "cidr"
  azs            = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  tags = {
    Environment = var.environment
    Terraform   = "true"
  }
}

# Call the EKS module and inject the VPC outputs
module "eks" {
  source = "../../modules/eks"

  cluster_name       = "DataScienceEKSCluster"
  environment        = "dev"
  kubernetes_version = var.kubernetes_version

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}
