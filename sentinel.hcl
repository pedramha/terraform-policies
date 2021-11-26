import "tfplan-functions" as plan

param mandatory_tags default ["Name", "ttl", "owner", "se-region", "purpose", "terraform"]

# Get all AWS Resources with standard tags
allAWSResourcesWithStandardTags =
                          aws.find_resources_with_standard_tags(resource_types)

# Filter to AWS resources with violations
# Warnings will be printed for all violations since the last parameter is true
violatingAWSResources =
        plan.filter_attribute_not_contains_list(allAWSResourcesWithStandardTags,
                        "tags", mandatory_tags, true)

# Main rule
main = rule {
  length(violatingAWSResources["messages"]) is 0
}