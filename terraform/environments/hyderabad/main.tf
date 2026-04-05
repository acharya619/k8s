module "foundation" {
  source = "../../"
  region              = var.region
  compartment_id      = var.compartment_id
  tenancy_id          = var.tenancy_id
  environment         = var.environment
  vcn_cidr            = var.vcn_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  dns_label           = var.dns_label
  common_tags         = var.common_tags
}
