terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.50"
    }
  }
}

provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.tfe_token
}
