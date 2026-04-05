resource "oci_identity_policy" "network_foundation" {
  compartment_id = var.tenancy_id
  name           = "${var.environment}-network-foundation"
  description    = "Minimal policy scaffold for the network foundation."

  statements = [
    "Allow group NetworkAdmins to manage virtual-network-family in compartment id ${var.compartment_id}"
  ]

  freeform_tags = var.common_tags
}
