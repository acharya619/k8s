variable "compartment_id" {
  type        = string
  description = "OCID of the compartment used for IAM-related compartments or policies."
}

variable "tenancy_id" {
  type        = string
  description = "OCID of the tenancy."
}

variable "environment" {
  type        = string
  description = "Environment name used in policy naming."
}

variable "common_tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to IAM resources."
}
