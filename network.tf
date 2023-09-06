provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "${var.prefix}-workshop"
  location = var.location

  tags = {
    environment = "Production"
  }
}

module "network" {
  source  = "app.terraform.io/leeml-org-azure2/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name =azurerm_resource_group.myresourcegroup.name
}