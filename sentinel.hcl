policy "enforce-mandatory-tags" {
    enforcement_level = "soft-mandatory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "advisory"
}

policy "deployment_window" {
    enforcement_level = "advisory"
}

policy "restrict-ec2-instance-type" {
  source = "./restrict-ec2-instance-type.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "validate-providers-from-desired-regions" {
  source = "./validate-providers-from-desired-regions.sentinel"
  enforcement_level = "hard-manadatory"
}