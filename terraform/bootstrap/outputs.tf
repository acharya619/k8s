output "bucket_name" {
  value = oci_objectstorage_bucket.state.name
}

output "bucket_id" {
  value = oci_objectstorage_bucket.state.id
}

output "bucket_namespace" {
  value = local.namespace
}
