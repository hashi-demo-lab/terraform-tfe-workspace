module "workspace" {
  source = "../../"

  name         = "example"
  organization = "example-org"

  tfe_token = "example"
}
