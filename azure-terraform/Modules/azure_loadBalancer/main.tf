## ============
#  loadBalancer
## ============

resource "azurerm_public_ip" "public_ip_lb" {
  name                = var.public_ip_lb_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  tags                = var.tags
}

resource "azurerm_lb" "loadBalancer" {
  name                = var.loadBalancer_name
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.public_ip_lb.id
  } 

  tags                   = var.tags

  depends_on = [
    #azurerm_application_gateway.rampup_app_network,
    azurerm_public_ip.public_ip_lb,
  ] 
}