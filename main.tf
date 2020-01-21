resource "azurerm_virtual_network_peering" "vnet-peering" {
  name                         = var.vnet_peering_name
  remote_virtual_network_id    = var.remote_vnet_id_to_peer
  resource_group_name          = var.resource_group_name
  virtual_network_name         = var.peering_from_vnet
  allow_virtual_network_access = var.enable_virtual_network_access
  allow_forwarded_traffic      = var.enable_forwarded_traffic
  allow_gateway_transit        = var.enable_gateway_transit
  use_remote_gateways          = var.enable_use_remote_gateways
}
