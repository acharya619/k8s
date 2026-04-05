data "oci_objectstorage_namespace" "this" {}

locals {
  namespace = coalesce(var.bucket_namespace, data.oci_objectstorage_namespace.this.namespace)
}

resource "oci_identity_compartment" "DevOpsCompartment" {
  name = "DevOps"
  description = "DevOps compartment"
  compartment_id = var.tenancy_id
  freeform_tags = var.common_tags
}

resource "oci_objectstorage_bucket" "state" {
  compartment_id = oci_identity_compartment.DevOpsCompartment.id
  namespace       = local.namespace
  name            = var.bucket_name
  storage_tier    = "Standard"
  versioning      = "Enabled"
  freeform_tags   = var.common_tags
  access_type     = "NoPublicAccess"
}
