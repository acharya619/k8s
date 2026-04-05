variable "compartment_id" {
  type        = string
  description = "OCID of the compartment where network resources are created."
}

variable "display_name" {
  type        = string
  description = "Base name used for network resources."
}

variable "vcn_cidr" {
  type        = string
  description = "CIDR block for the VCN."
}

variable "dns_label" {
  type        = string
  description = "DNS label for the VCN."
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet."
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for the private subnet."
}

variable "common_tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to all network resources."
}
