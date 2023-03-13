provider "azurerm" {
    features {}
}

terraform {
  required_version = ">= 0.15"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.45.0"
    }
  }
}