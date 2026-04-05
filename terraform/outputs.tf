output "vcn_id" {
  value       = module.network.vcn_id
  description = "OCID of the VCN."
}

output "public_subnet_id" {
  value       = module.network.public_subnet_id
  description = "OCID of the public subnet."
}

output "private_subnet_id" {
  value       = module.network.private_subnet_id
  description = "OCID of the private subnet."
}

output "internet_gateway_id" {
  value       = module.network.internet_gateway_id
  description = "OCID of the internet gateway."
}

output "nat_gateway_id" {
  value       = module.network.nat_gateway_id
  description = "OCID of the NAT gateway."
}
