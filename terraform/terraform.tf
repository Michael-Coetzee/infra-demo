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
      version = "~> 4.0"
    }
  }

  required_version = "~> 1.2"
}
