variable "cluster_name" {
  description = "EKS cluster name."
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version."
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs."
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "Subnet IDs used by worker nodes."
  type        = list(string)
}

variable "cluster_security_group_id" {
  description = "Security group ID for EKS control plane."
  type        = string
}

variable "node_security_group_id" {
  description = "Security group ID for worker nodes."
  type        = string
}

variable "endpoint_private_access" {
  description = "Enable private endpoint."
  type        = bool
}

variable "endpoint_public_access" {
  description = "Enable public endpoint."
  type        = bool
}

variable "endpoint_public_access_cidrs" {
  description = "Allowed CIDRs for public endpoint."
  type        = list(string)
}

variable "node_group_name" {
  description = "Managed node group name."
  type        = string
}

variable "node_instance_types" {
  description = "EC2 instance types for node group."
  type        = list(string)
}

variable "node_capacity_type" {
  description = "ON_DEMAND or SPOT."
  type        = string
}

variable "node_ami_type" {
  description = "AMI type for node group."
  type        = string
}

variable "node_disk_size" {
  description = "Disk size in GiB."
  type        = number
}

variable "node_desired_size" {
  description = "Desired node count."
  type        = number
}

variable "node_min_size" {
  description = "Minimum node count."
  type        = number
}

variable "node_max_size" {
  description = "Maximum node count."
  type        = number
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}
