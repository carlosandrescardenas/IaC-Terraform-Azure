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

variable "virtual_network_name" {
  description = "virtual_network_name"
  type = string
}

variable "appserviceplan_name" {
  description = "appservice plan name name"
  type = string
}

variable "rampup_app_service_plan_os_type" {
  description = "app_service_plan values"
  type = string
}

variable "rampup_app_service_plan_sku_name" {
  description = "app_service_plan values"
  type = string
}

variable "tags" {
  description = "tags"
  type = map
}

variable "minimum_tls_version" {
  description = "minimum_tls_version"
  type = number
}

variable "env_variables" {
  description = "env variables for container registry"
  type = map
}

variable "docker_image_tag" {
  description = "docker image tag"
  type = string
}

variable "public_ip_lb_name" {
  description = "public_ip_lb_name"
  type = string
}

variable "loadBalancer_name" {
  description = "loadBalancer_name"
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

variable "identity_type" {
  description = "identity_type"
  type = string
}

variable "as_name_auth_api" {
  description = "appservice name auth api"
  type = string
}

variable "image_definition_auth_api" {
  description = "image definition"
  type = string
}

variable "as_name_frontend" {
  description = "appservice name frontend"
  type = string
}

variable "image_definition_frontend" {
  description = "image definition"
  type = string
}

variable "as_name_users_api" {
  description = "appservice name users api"
  type = string
}

variable "image_definition_users_api" {
  description = "image definition"
  type = string
}

variable "as_name_todos_api" {
  description = "appservice name todos api"
  type = string
}

variable "image_definition_todos_api" {
  description = "image definition"
  type = string
}

variable "as_name_log_message" {
  description = "appservice name log_message"
  type = string
}

variable "image_definition_log_message" {
  description = "image definition"
  type = string
}

variable "as_name_redis" {
  description = "appservice name redis"
  type = string
}

variable "image_definition_redis" {
  description = "image definition"
  type = string
}

variable "as_name_zipkin" {
  description = "appservice name zipkin"
  type = string
}

variable "image_definition_zipkin" {
  description = "image definition"
  type = string
}