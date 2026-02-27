project_name = "terraform-aws-eks"
environment  = "prod"
aws_region   = "us-east-1"

vpc_cidr             = "10.20.0.0/16"
az_count             = 3
public_subnet_cidrs  = ["10.20.1.0/24"]
private_subnet_cidrs = ["10.20.11.0/24"]
single_nat_gateway   = false

cluster_name       = "eks-prod-cluster"
kubernetes_version = "1.31"

endpoint_private_access      = true
endpoint_public_access       = true
endpoint_public_access_cidrs = ["203.0.113.10/32"]

node_group_name     = "eks-prod-ng"
node_instance_types = ["t2.micro"]
node_capacity_type  = "ON_DEMAND"
node_ami_type       = "AL2_x86_64"
node_disk_size      = 20
node_desired_size   = 1
node_min_size       = 1
node_max_size       = 1
