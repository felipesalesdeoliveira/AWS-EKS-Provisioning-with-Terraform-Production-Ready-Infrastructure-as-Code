variable "name_prefix" {
  description = "Prefix for resource names."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "endpoint_public_access" {
  description = "Whether API endpoint is public."
  type        = bool
}

variable "endpoint_public_access_cidrs" {
  description = "Allowed public CIDRs for API endpoint."
  type        = list(string)
}
