policy "enforce-mandatory-tags" {
    enforcement_level = "soft-mandatory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "soft-mandatory""
}

policy "deployment_window" {
    enforcement_level = "advisory"
}