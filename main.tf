
# Define locals
locals {
  project_name = "devtron-demo"
  environment  = "staging"
  full_name    = "${local.project_name}-${local.environment}"
}

# Use the local variable in a resource (example with null_resource)
resource "null_resource" "example" {
  triggers = {
    name = local.full_name
  }
}

# Output the local variable values
output "project_name" {
  value = local.project_name
}

output "environment" {
  value = local.environment
}

output "full_name" {
  value = local.full_name
}
