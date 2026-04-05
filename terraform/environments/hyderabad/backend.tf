terraform {
  backend "oci" {
    bucket = "tf-state"
    namespace = "axktvqd5gsud"
    region = "ap-hyderabad-1"
    config_file_profile = "DEFAULT"
  }
}
