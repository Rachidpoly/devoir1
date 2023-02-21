# The configuration for the `remote` backend.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

# Déclaration du fournisseur Microsoft Azure
provider "azurerm" {
  features {}
}
# Define an example resource group using the "azurerm_resource_group" resource type.
resource "azurerm_resource_group" "example" {
  name = "example-resource2"
  location = "West Europe"
}
    # The name of your Terraform Cloud organization.
    organization = "rachidpoly"
    
    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "rachidworkplace"
# Création du réseau virtuel
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
