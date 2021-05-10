provider "azurerm" {
  version = "=2.18.0"
  features {}
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cloud-practice-am"
    workspaces {
      name = "azure-gitactions"
    }
  }
}
