module "virtualnetwork" {
    source = "./modules/azure_network"
    security_group_name = var.security_group_name
    virtual_network_name = var.virtual_network_name
    azurerm_subnet_front_name = var.azurerm_subnet_front_name
    azurerm_subnet_services_name = var.azurerm_subnet_services_name
    location = var.location
    resource_group_name = var.resource_group_name
    tags = var.tags
}

module "loadBalancer" {
    source = "./modules/azure_loadBalancer"
    public_ip_lb_name = var.public_ip_lb_name
    location = var.location
    resource_group_name = var.resource_group_name
    tags = var.tags
    loadBalancer_name = var.loadBalancer_name
}

module "as_auth_api" {
    source = "./modules/azure_appService"
    name        = var.as_name_auth_api
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_auth_api
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "8081" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id

    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name

    tags                    = var.tags
}

module "as_frontend" {
    source = "./modules/azure_appService"
    name        = var.as_name_frontend
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_frontend
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "8080" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id
    
    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name
    
    tags                    = var.tags
}

module "as_users_api" {
    source = "./modules/azure_appService"
    name        = var.as_name_users_api
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_users_api
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "8083" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id
    
    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name
    
    tags                    = var.tags
}

module "as_todos_api" {
    source = "./modules/azure_appService"
    name        = var.as_name_todos_api
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_todos_api
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "8082" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id
    
    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name
    
    tags                    = var.tags
}

module "as_log_message" {
    source = "./modules/azure_appService"
    name     = var.as_name_log_message
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_log_message
    docker_image_tag        = var.docker_image_tag
    env_variables           = var.env_variables
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id
    
    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name
    
    tags                    = var.tags
}

module "as_redis" {
    source = "./modules/azure_appService"
    name           = var.as_name_redis
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_redis
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "6379" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id

    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name

    tags                    = var.tags
}

module "as_zipkin" {
    source = "./modules/azure_appService"
    name          = var.as_name_zipkin
    location                = var.location
    resource_group_name     = var.resource_group_name
    minimum_tls_version     = var.minimum_tls_version
    image_definition = var.image_definition_zipkin
    docker_image_tag        = var.docker_image_tag
    env_variables           = merge(var.env_variables, { PORT = "9411" }) 
    identity_type           = var.identity_type
    #subnet_id = module.virtualnetwork.subnetfront_id

    appserviceplan_name = var.appserviceplan_name
    rampup_app_service_plan_os_type = var.rampup_app_service_plan_os_type
    rampup_app_service_plan_sku_name = var.rampup_app_service_plan_sku_name

    tags                    = var.tags
}

