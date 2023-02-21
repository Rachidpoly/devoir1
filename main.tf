# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Define an example resource group using the "azurerm_resource_group" resource type.
resource "azurerm_resource_group" "example" {
  name     = "example-resource2"
  location = "West Europe"
}

# Création du réseau virtuel
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

