project_name = "terraform-aws-eks"
environment  = "dev"
aws_region   = "us-east-1"

vpc_cidr             = "10.10.0.0/16"
az_count             = 1
public_subnet_cidrs  = ["10.10.1.0/24"]
private_subnet_cidrs = ["10.10.11.0/24"]
single_nat_gateway   = true
enable_nat_gateway    = false

cluster_name       = "eks-dev-cluster"
kubernetes_version = "1.31"

endpoint_private_access      = true
endpoint_public_access       = true
endpoint_public_access_cidrs = ["0.0.0.0/0"]

node_group_name         = "eks-dev-ng"
use_public_node_subnets = true
node_instance_types     = ["t2.micro"]
node_capacity_type      = "ON_DEMAND"
node_ami_type           = "AL2_x86_64"
node_disk_size          = 20
node_desired_size       = 1
node_min_size           = 1
node_max_size           = 1