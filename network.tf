module "network" {
  source  = "app.terraform.io/leeml-org-azure2/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name =  "${var.prefix}-workshop"
}