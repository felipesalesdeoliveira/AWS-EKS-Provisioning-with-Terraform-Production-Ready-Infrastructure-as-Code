variable "name_prefix" {
  description = "Prefix for resource names."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC."
  type        = string
}

variable "azs" {
  description = "Availability Zones."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "If true, create a single NAT gateway."
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "EKS cluster name used for subnet tags."
  type        = string
}
