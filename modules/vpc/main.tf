module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr
  #cidrsubnet(prefix, newbits, netnum)
  #prefix: The CIDR block you want to subnet. 10.0.0.0/16
  #newbits: The number of additional bits with which to extend the prefix. 8
  #netnum: The number of the desired subnet (0-based). k
  azs                 = var.azs
  private_subnets     = [for k, v in var.azs : cidrsubnet(var.cidr, 8, k)]
  public_subnets      = [for k, v in var.azs : cidrsubnet(var.cidr, 8, k + 4)]



  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_vpn_gateway = true

  tags = var.tags
}