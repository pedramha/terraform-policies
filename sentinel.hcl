policy "enforce-mandatory-tags" {
    enforcement_level = "soft-mandatory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
    enforcement_level = "advisory"
}

policy "deployment_window" {
    enforcement_level = "advisory"
}

// policy "restrict-ec2-instance-type" {
//   source = "./restrict-ec2-instance-type.sentinel"
//   enforcement_level = "soft-mandatory"
// }

// policy "restrict-availability-zones" {
//   source = "./restrict-availability-zones.sentinel"
//   enforcement_level = "advisory"
// }

// policy "restrict-ingress-sg-rule-cidr-blocks" {
//   source = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
//   enforcement_level = "advisory"
// }