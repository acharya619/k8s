locals {
  name_prefix = "${var.environment}-network"
  tags        = merge(var.common_tags, { environment = var.environment })
}

module "network" {
  source = "./modules/network"

  compartment_id      = var.compartment_id
  display_name        = local.name_prefix
  vcn_cidr            = var.vcn_cidr
  dns_label           = var.dns_label
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  common_tags         = local.tags
}

module "iam" {
  source = "./modules/iam"

  compartment_id = var.compartment_id
  tenancy_id     = var.tenancy_id
  environment    = var.environment
  common_tags    = local.tags
}
