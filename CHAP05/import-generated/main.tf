terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.20"
    }
  }
}

provider "azurerm" {
  features {}
}

import {
  id = "/subscriptions/<your subscription id>/resourcegroups/RG-APP-IMPORT"
  to = azurerm_resource_group.rg-app
}