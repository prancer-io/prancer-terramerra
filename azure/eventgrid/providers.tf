terraform {
  required_version = ">= 1.0.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.72.0"
    }
  }
}

provider "azurerm" {
  features {}
}