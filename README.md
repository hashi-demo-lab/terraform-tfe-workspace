# Terraform TFE Workspace Module

This module manages a Terraform Enterprise/Cloud workspace using the [TFE provider](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace).

## Usage

```hcl
module "workspace" {
  source      = "./" # replace with module source

  name         = "example"
  organization = "my-org"
}
```
The TFE provider reads the authentication token from the `TFE_TOKEN` environment variable.

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the workspace to create. | string | n/a |
| organization | The name of the organization owning the workspace. | string | n/a |
| tfe_hostname | Hostname of the Terraform Enterprise/Cloud instance. | string | null |
| terraform_version | Optional Terraform version for the workspace. | string | null |
| execution_mode | Workspace execution mode (remote or local). | string | "remote" |

## Outputs

| Name | Description |
|------|-------------|
| name | Workspace name |
| resource_id | ID of the created workspace |


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.50 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >= 0.50 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Workspace execution mode (remote or local). | `string` | `"remote"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the workspace to create. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization owning the workspace. | `string` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Optional Terraform version for the workspace. | `string` | `null` | no |
| <a name="input_tfe_hostname"></a> [tfe\_hostname](#input\_tfe\_hostname) | Hostname of the Terraform Enterprise/Cloud instance. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Workspace name |
| <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id) | ID of the created workspace |
<!-- END_TF_DOCS -->