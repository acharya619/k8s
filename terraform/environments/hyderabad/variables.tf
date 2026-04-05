variable "region" { type = string }
variable "compartment_id" { type = string }
variable "tenancy_id" { type = string }
variable "environment" { 
    type = string
}
variable "vcn_cidr" { type = string }
variable "public_subnet_cidr" { type = string }
variable "private_subnet_cidr" { type = string }
variable "dns_label" { type = string }
variable "common_tags" { 
    type = map(string)
    default = {} 
}
