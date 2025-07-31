terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
  backend "local" {}  # remote in prod
}

resource "local_file" "demo" {
  content  = "Terraform managed file"
  filename = "${path.module}/demo.txt"
}

module "example" {
  source = "./modules/example"
}
