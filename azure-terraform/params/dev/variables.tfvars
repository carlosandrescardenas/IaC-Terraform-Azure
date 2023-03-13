## ============
#  Values
## ============

resource_group_name = "c.cardenasp_rg"
location = "eastus"
security_group_name = "rampup_security_group"
virtual_network_name = "rampup_virtual_network"
appserviceplan_name  = "rampup_app_service_plan"
rampup_app_service_plan_os_type = "Linux"
rampup_app_service_plan_sku_name = "B2"

tags = {
    Proyecto      = "ramp-up-devops"
    Responsable   = "carlos.cardenasp"
    Creator       = "carlos.cardenasp"
  }

minimum_tls_version = 1.2

env_variables = {
    DOCKER_ENABLE_CI                     = true
    #WEBSITES_ENABLE_APP_SERVICE_STORAGE  = false
    DOCKER_REGISTRY_SERVER_URL           = "https://rampupcr.azurecr.io"
    DOCKER_REGISTRY_SERVER_USERNAME      = "rampupcr"
    DOCKER_REGISTRY_SERVER_PASSWORD      = "nqmD1Q39BUsRX9MM9Uw0P6D/XqmLO/XWt+ahUwjwOl+ACRCjihKT"  
  }

docker_image_tag = "latest"
public_ip_lb_name = "rampup_public_ip_lb"
loadBalancer_name = "rampup_load_balancer"
azurerm_subnet_front_name = "rampup_subnetfront"
azurerm_subnet_services_name = "rampup_subnetservices"
identity_type = "SystemAssigned"

as_name_auth_api = "rampup-as-auth-api"
image_definition_auth_api  = "rampupcr.azurecr.io/auth-api"

as_name_frontend = "rampup-as-frontend"
image_definition_frontend = "rampupcr.azurecr.io/frontend"

as_name_users_api  = "rampup-as-users-api" 
image_definition_users_api = "rampupcr.azurecr.io/users-api"

as_name_todos_api = "rampup-as-todos-api"
image_definition_todos_api = "rampupcr.azurecr.io/todos-api"

as_name_log_message = "rampup-as-log-message"
image_definition_log_message = "rampupcr.azurecr.io/log-message"

as_name_redis = "rampup-as-redis"
image_definition_redis = "rampupcr.azurecr.io/redis"

as_name_zipkin = "rampup-as-zipkin"
image_definition_zipkin = "rampupcr.azurecr.io/zipkin"