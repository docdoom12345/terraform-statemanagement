terraform {
  backend "azurerm" {
    resource_group_name  = "save-tfstate"
    storage_account_name = "sai1424124123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0" #azurerm version
    }
  }
  #required_version = "=1.4.6" #terraform version
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "95570899-390a-4bfb-a345-ce3c65b34163"     #appid
  client_secret   = "8-h8Q~johdddnNEmrHKjj3znPNCavtOpgwoCLcoW" #password
  tenant_id       = "cea297cb-9bde-428d-9a6e-48fa9c582ed6"     #tenant
  subscription_id = "2a79f2da-f098-4c8a-8e2a-f426682b1eac"     #subscription
}