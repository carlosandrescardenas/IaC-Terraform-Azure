## ============
#  Network
## ============

resource "azurerm_network_security_group" "rampupsecuritygroup" {
  name                = var.security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_virtual_network" "rampupvirtualnetwork" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags = var.tags

  depends_on = [
    azurerm_network_security_group.rampupsecuritygroup
 ]
}

resource "azurerm_subnet" "subnetfront" {
  name                 = var.azurerm_subnet_front_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.1.0/28"]

  delegation {
    name = "delegationFront"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }

  depends_on = [
    azurerm_virtual_network.rampupvirtualnetwork
 ]
}

resource "azurerm_subnet" "subnetservices" {
  name                 = var.azurerm_subnet_services_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.2.0/28"]

  delegation {
    name = "delegationservices"

    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }

  depends_on = [
    azurerm_virtual_network.rampupvirtualnetwork
 ]
}