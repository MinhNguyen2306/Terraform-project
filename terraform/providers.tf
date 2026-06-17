terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  # Backend configuration is set via backend config file in each environment folder
  # See: terraform/dev/backend.tf, terraform/stg/backend.tf, terraform/prod/backend.tf
}

provider "azurerm" {
  features {}
}
