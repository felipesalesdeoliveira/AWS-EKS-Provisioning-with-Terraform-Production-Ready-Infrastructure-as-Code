data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  name_prefix = "${var.project_name}-${var.environment}"
  azs         = slice(data.aws_availability_zones.available.names, 0, var.az_count)
}

module "vpc" {
  source = "./modules/vpc"

  name_prefix          = local.name_prefix
  vpc_cidr             = var.vpc_cidr
  azs                  = local.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  single_nat_gateway   = var.single_nat_gateway
  cluster_name         = var.cluster_name
}

module "security" {
  source = "./modules/security"

  name_prefix                  = local.name_prefix
  vpc_id                       = module.vpc.vpc_id
  endpoint_public_access       = var.endpoint_public_access
  endpoint_public_access_cidrs = var.endpoint_public_access_cidrs
}

module "eks" {
  source = "./modules/eks"

  cluster_name                 = var.cluster_name
  kubernetes_version           = var.kubernetes_version
  private_subnet_ids           = module.vpc.private_subnet_ids
  cluster_security_group_id    = module.security.cluster_security_group_id
  node_security_group_id       = module.security.node_security_group_id
  endpoint_private_access      = var.endpoint_private_access
  endpoint_public_access       = var.endpoint_public_access
  endpoint_public_access_cidrs = var.endpoint_public_access_cidrs
  node_group_name              = var.node_group_name
  node_instance_types          = var.node_instance_types
  node_capacity_type           = var.node_capacity_type
  node_ami_type                = var.node_ami_type
  node_disk_size               = var.node_disk_size
  node_desired_size            = var.node_desired_size
  node_min_size                = var.node_min_size
  node_max_size                = var.node_max_size

  tags = {
    Name        = local.name_prefix
    Environment = var.environment
    Project     = var.project_name
  }
}
