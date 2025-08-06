terraform {

  cloud {
    organization = "mace-tutorial"

    workspaces {
      name = "learn-terraform"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  required_version = "~> 1.2"
}
