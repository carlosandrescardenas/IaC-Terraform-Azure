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

variable "public_ip_lb_name" {
  description = "public_ip_lb_name"
  type = string
}

variable "loadBalancer_name" {
  description = "loadBalancer_name"
  type = string
}

variable "tags" {
  description = "tags"
  type = map
}