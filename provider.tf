# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.92"
    }
  }
 
 }

provider "azurerm" {
  features {}
  skip_provider_registration = true
  storage_use_azuread = true
}

 resource "azurerm_virtual_network" "app-vnet" {
  name                =  "app-vnet"
  location            = "eastus"
  resource_group_name = "947-5602e188-setting-up-remote-state-storage"
  address_space       =  ["10.20.68.128/26"]

}
