mock_provider "tfe" {}

variables {
  name         = "test"
  organization = "example-org"
  tfe_hostname = "app.terraform.io"
}

run "plan" {
  command = plan

  assert {
    condition     = tfe_workspace.this.name == "test"
    error_message = "workspace name mismatch"
  }
}
