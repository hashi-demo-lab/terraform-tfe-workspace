# Terraform TFE Workspace Module

This module manages a Terraform Enterprise/Cloud workspace using the [TFE provider](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace).

## Usage

```hcl
module "workspace" {
  source      = "./" # replace with module source

  name         = "example"
  organization = "my-org"

  tfe_token    = "token"
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the workspace to create. | string | n/a |
| organization | The name of the organization owning the workspace. | string | n/a |
| tfe_hostname | Hostname of the Terraform Enterprise/Cloud instance. | string | null |
| tfe_token | Authentication token for the Terraform Enterprise/Cloud instance. | string | n/a |
| terraform_version | Optional Terraform version for the workspace. | string | null |
| execution_mode | Workspace execution mode (remote or local). | string | "remote" |

## Outputs

| Name | Description |
|------|-------------|
| name | Workspace name |
| resource_id | ID of the created workspace |

