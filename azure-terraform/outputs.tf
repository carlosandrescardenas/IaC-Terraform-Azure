# -----------
# outputs
# -----------

output "resource_group_name" {
    value = module.as_auth_api.resource_group_name
    description = "resource group name"
}