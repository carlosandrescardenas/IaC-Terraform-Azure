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

variable "identity_type" {
  description = "identity_type"
  type = string
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

variable "name" {
  description = "appservice name auth api"
  type = string
}

variable "image_definition" {
  description = "image definition"
  type = string
}

/* variable "subnet_id" {
  description = "subnet_id"
  type = string
}
 */