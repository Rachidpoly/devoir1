# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "rachidpoly"
    
    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "rachidworkplace"
    }
  }
}

# Define an example resource group using the "azurerm_resource_group" resource type.
resource "azurerm_resource_group" "example" {
  name = "example-resource-group"
  location = "West Europe"
}
