variable "region" {
  description = "OCI region for the environment."
  type        = string
}

variable "compartment_id" {
  description = "OCID of the compartment where resources are created."
  type        = string
}

variable "tenancy_id" {
  description = "OCID of the tenancy."
  type        = string
}

variable "environment" {
  description = "Environment name used for naming and tagging."
  type        = string
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet."
  type        = string
}

variable "dns_label" {
  description = "DNS label for the VCN."
  type        = string
}

variable "common_tags" {
  description = "Tags applied to all resources."
  type        = map(string)
  default     = {}
}
