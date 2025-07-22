output "name" {
  description = "Workspace name"
  value       = tfe_workspace.this.name
}

output "resource_id" {
  description = "ID of the created workspace"
  value       = tfe_workspace.this.id
}
