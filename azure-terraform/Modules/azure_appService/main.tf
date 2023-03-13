# -----------
# App Services
# -----------

resource "azurerm_service_plan" "rampup_app_service_plan" {
  name                = var.appserviceplan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.rampup_app_service_plan_os_type
  sku_name            = var.rampup_app_service_plan_sku_name
  tags                = var.tags
}

#appService auth_api 
resource "azurerm_linux_web_app" "appservice" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  service_plan_id         = azurerm_service_plan.rampup_app_service_plan.id
  https_only              = true
  client_affinity_enabled = true
  tags                    = var.tags
 
 site_config {
        minimum_tls_version = var.minimum_tls_version
        always_on      = "true"
        application_stack {
          docker_image = var.image_definition
          docker_image_tag = var.docker_image_tag
        }
        container_registry_use_managed_identity = false
  }
  #virtual_network_subnet_id = var.subnet_id
  app_settings = var.env_variables
  

  identity {
      type = var.identity_type
  }  

  depends_on = [
    azurerm_service_plan.rampup_app_service_plan
 ]
}