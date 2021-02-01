provider "azurerm" {
  version         = ">= 2.0"
  subscription_id = local.vnet_1_subscription_id
  tenant_id       = var.vnet_1_tenant_id
  client_id       = var.vnet_1_client_id
  client_secret   = var.vnet_1_client_secret
  features {}
}

provider "azurerm" {
  version         = ">= 2.0"
  subscription_id = local.vnet_2_subscription_id
  tenant_id       = var.vnet_2_tenant_id
  client_id       = var.vnet_2_client_id
  client_secret   = var.vnet_2_client_secret
  features {}
}
