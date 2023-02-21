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

  subscription_id = "2278609a-b9c6-4f66-a8bd-a1d53e30db36"
  tenant_id       = "c9209ad1-22b1-421e-9eb9-e48b2dae1993"
}

# Define an example resource group using the "azurerm_resource_group" resource type.
resource "azurerm_resource_group" "example" {
  name     = "example-resource2"
  location = "West Europe"
}

# Création du réseau virtuel
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

