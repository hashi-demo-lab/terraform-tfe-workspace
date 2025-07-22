resource "tfe_workspace" "this" {
  name              = var.name
  organization      = var.organization
  terraform_version = var.terraform_version
  execution_mode    = var.execution_mode
}
