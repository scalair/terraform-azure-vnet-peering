data "azurerm_virtual_network" "vnet_1" {
  for_each = { for i, p in var.peerings : i => p }

  name                = each.value.source.vnet_name
  resource_group_name = each.value.source.resource_group_name
}

data "azurerm_virtual_network" "vnet_2" {
  for_each = { for i, p in var.peerings : i => p }

  name                = each.value.destination.vnet_name
  resource_group_name = each.value.destination.resource_group_name
}

resource "azurerm_virtual_network_peering" "vnet_peering_1" {
  for_each = { for i, p in var.peerings : i => p }

  name                         = format("peer-%s-%s", each.value.source.vnet_name, each.value.destination.vnet_name)
  resource_group_name          = each.value.source.resource_group_name
  virtual_network_name         = each.value.source.vnet_name
  remote_virtual_network_id    = data.azurerm_virtual_network.vnet_2[each.key].id
  allow_virtual_network_access = lookup(each.value.source, "allow_virtual_network_access", null)
  allow_forwarded_traffic      = lookup(each.value.source, "allow_forwarded_traffic", null)
  allow_gateway_transit        = lookup(each.value.source, "allow_gateway_transit", null)
  use_remote_gateways          = lookup(each.value.source, "use_remote_gateways", null)
}

resource "azurerm_virtual_network_peering" "vnet_peering_2" {
  for_each = { for i, p in var.peerings : i => p }

  name                         = format("peer-%s-%s", each.value.destination.vnet_name, each.value.source.vnet_name)
  resource_group_name          = each.value.destination.resource_group_name
  virtual_network_name         = each.value.destination.vnet_name
  remote_virtual_network_id    = data.azurerm_virtual_network.vnet_1[each.key].id
  allow_virtual_network_access = lookup(each.value.destination, "allow_virtual_network_access", null)
  allow_forwarded_traffic      = lookup(each.value.destination, "allow_forwarded_traffic", null)
  allow_gateway_transit        = lookup(each.value.destination, "allow_gateway_transit", null)
  use_remote_gateways          = lookup(each.value.destination, "use_remote_gateways", null)
}
