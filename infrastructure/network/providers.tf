terraform {
  backend "azurerm" {
    resource_group_name = "$RG_NAME"
    storage_account_name = "$STORAGEACCNAME"
    container_name = "$CONTAINERNAME"
    key = "$BLOBNAME"
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.0.1"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  resource_provider_registrations = "none"
  storage_use_azuread = true
}
