terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}
terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

variable "location" {
  type    = string
  default = "westeurope"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-sitehtml-${terraform.workspace}"
  location = var.location
}

resource "azurerm_storage_account" "site" {
  name                     = "blobhtmlsitetf${terraform.workspace}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                = azurerm_resource_group.rg.location
  account_kind            = "StorageV2"
  account_tier            = "Standard"
  account_replication_type = "LRS"
 

  static_website {
    index_document = "index.html"
  }
}
