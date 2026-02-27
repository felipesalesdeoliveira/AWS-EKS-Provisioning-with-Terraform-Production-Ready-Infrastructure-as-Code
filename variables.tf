variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "terraform-aws-eks"
}

variable "environment" {
  description = "Environment name (dev, prod, etc)."
  type        = string
}

variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "az_count" {
  description = "Number of Availability Zones to use."
  type        = number
  default     = 2
}

variable "public_subnet_cidrs" {
  description = "CIDRs for public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDRs for private subnets."
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "Whether to use a single NAT Gateway (cost optimization)."
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Whether to create NAT Gateway resources."
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "EKS cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.31"
}

variable "endpoint_private_access" {
  description = "Enable private API server endpoint."
  type        = bool
  default     = true
}

variable "endpoint_public_access" {
  description = "Enable public API server endpoint."
  type        = bool
  default     = true
}

variable "endpoint_public_access_cidrs" {
  description = "Allowed CIDRs for the public API endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "node_group_name" {
  description = "EKS managed node group name."
  type        = string
}

variable "use_public_node_subnets" {
  description = "If true, node group will use public subnets instead of private subnets."
  type        = bool
  default     = false
}

variable "node_instance_types" {
  description = "Instance types for worker nodes."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_capacity_type" {
  description = "ON_DEMAND or SPOT."
  type        = string
  default     = "ON_DEMAND"
}

variable "node_ami_type" {
  description = "AMI type for managed node group."
  type        = string
  default     = "AL2_x86_64"
}

variable "node_disk_size" {
  description = "Disk size in GiB for worker nodes."
  type        = number
  default     = 20
}

variable "node_desired_size" {
  description = "Desired number of worker nodes."
  type        = number
}

variable "node_min_size" {
  description = "Minimum number of worker nodes."
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes."
  type        = number
}
