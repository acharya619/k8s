variable "region" {
  description = "OCI region where the bootstrap resources are created."
  type        = string
}

variable "compartment_id" {
  description = "OCID of the compartment where the backend bucket lives."
  type        = string
}

variable "bucket_name" {
  description = "Object Storage bucket name used for Terraform state."
  type        = string
}

variable "bucket_namespace" {
  description = "OCI Object Storage namespace. If omitted, it is discovered from the tenancy."
  type        = string
  default     = null
}

variable "common_tags" {
  description = "Tags applied to bootstrap resources."
  type        = map(string)
  default     = {}
}

variable "tenancy_id" {
  description = "OCID of the tenancy."
  type        = string
}
