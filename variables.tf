variable "tfe_hostname" {
  description = "Hostname of the Terraform Enterprise/Cloud instance."
  type        = string
  default     = null
}

variable "organization" {
  description = "The name of the organization owning the workspace."
  type        = string
}

variable "name" {
  description = "Name of the workspace to create."
  type        = string
}

variable "terraform_version" {
  description = "Optional Terraform version for the workspace."
  type        = string
  default     = null
}

variable "execution_mode" {
  description = "Workspace execution mode (remote or local)."
  type        = string
  default     = "remote"
}
