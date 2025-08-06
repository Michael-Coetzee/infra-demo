provider "azurerm" {
  features {}
  # Auth via env vars from HCP variable set
}

# Remote state is handled by HCP cloud block in terraform.tf

module "rg" {
  source = "./modules/rg"
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = module.rg.name
  location            = module.rg.location
  tags                = module.rg.tags
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}
