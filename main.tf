terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }  
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  location = "australiaeast"
  name     = "mytestrg"
}

resource "null_resource" "quickstart" {
}