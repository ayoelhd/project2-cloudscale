terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }

  # Remote backend – stores state in Azure Blob Storage
  # Fill in after you create the storage account (see README setup step)
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateyourname"   # must be globally unique & lowercase
    container_name       = "tfstate"
    key                  = "project2.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  # Credentials come from GitHub Secrets / environment variables:
  # ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID, ARM_TENANT_ID
}
