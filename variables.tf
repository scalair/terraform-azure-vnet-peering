# vnet peering variable

variable "vnet_peering_name" {
  description = "The name of the virtual network peering. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "peering_from_vnet" {
  description = ""
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = ""
  type        = string
  default     = ""
}

variable "remote_vnet_id_to_peer" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_virtual_network_access" {
  description = ""
  type        = string
  default     = true
}

variable "enable_forwarded_traffic" {
  description = ""
  type        = string
  default     = false
}

variable "enable_gateway_transit" {
  description = ""
  type        = string
  default     = false
}

variable "enable_use_remote_gateways" {
  description = ""
  type        = string
  default     = false
}
