## ============
#  Variables
## ============

variable "resource_group_name" {
  type        = string
  description = "resource_group_name"
}

variable "location" {
  type        = string
  description = "location"
}

variable "security_group_name" {
  description = "security_group_name"
  type = string
}

variable "tags" {
  description = "tags"
  type = map
}

variable "virtual_network_name" {
  description = "virtual_network_name"
  type = string
}

variable "azurerm_subnet_front_name" {
  description = "azurerm_subnet_front_name"
  type = string
}

variable "azurerm_subnet_services_name" {
  description = "azurerm_subnet_services_name"
  type = string
}