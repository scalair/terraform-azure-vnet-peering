# vent peering outputs

output "vnet_peering_id" {
  value = azurerm_virtual_network_peering.vnet-peering.id
}

output "vnet_peering_name" {
  value = azurerm_virtual_network_peering.vnet-peering.name
}

output "resource_group_name" {
  value = azurerm_virtual_network_peering.vnet-peering.resource_group_name
}

output "vnet_peering_remote_virtual_network_id" {
  value = azurerm_virtual_network_peering.vnet-peering.remote_virtual_network_id
}

output "vnet_peering_allow_virtual_network_acess" {
  value = azurerm_virtual_network_peering.vnet-peering.allow_virtual_network_access
}

output "vnet_peering_allow_forwarded_traffic" {
  value = azurerm_virtual_network_peering.vnet-peering.allow_forwarded_traffic
}

output "vnet_peering_allow_gateway_transit" {
  value = azurerm_virtual_network_peering.vnet-peering.allow_gateway_transit
}

output "vnet_peering_use_remote_gateways" {
  value = azurerm_virtual_network_peering.vnet-peering.use_remote_gateways
}
