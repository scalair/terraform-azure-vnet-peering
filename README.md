# Terraform Azure Virtual network peering

This module peers two virtual networks in the same subscription.

More info [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering).

## Usage example

The following example will create 4 peerings:

- vnet1 -> vnet2
- vnet2 -> vnet1
- vnet1 -> vnet3
- vnet3 -> vnet1

```hcl
module "vnet_peering" {
  source = "github.com/scalair/terraform-azure-vnet-peering"

  peerings = [
    {
      source = {
        vnet_name                    = "vnet_1",
        resource_group_name          = "rg_1",
        allow_virtual_network_access = true,
        allow_forwarded_traffic      = false,
        allow_gateway_transit        = false,
        use_remote_gateways          = false,
      },
      destination = {
        vnet_name                    = "vnet_2",
        resource_group_name          = "rg_2",
        allow_virtual_network_access = true,
        allow_forwarded_traffic      = false,
        allow_gateway_transit        = false,
        use_remote_gateways          = false,
      }
    },
    {
      source = {
        vnet_name                    = "vnet_1",
        resource_group_name          = "rg_1",
        allow_virtual_network_access = true,
        allow_forwarded_traffic      = false,
        allow_gateway_transit        = false,
        use_remote_gateways          = false,
      },
      destination = {
        vnet_name                    = "vnet_3",
        resource_group_name          = "rg_3",
        allow_virtual_network_access = true,
        allow_forwarded_traffic      = false,
        allow_gateway_transit        = false,
        use_remote_gateways          = false,
      }
    }
  ]
}
```

## Limitations

This module can only peer vnets in the same subscription.
