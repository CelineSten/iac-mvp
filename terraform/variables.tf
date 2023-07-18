variable "subscription_id" {
    description = "Azure subscription ID"
    type = string
}

variable "resource_group_name" {
    description = "Name of resource group"
    type = string
}

variable "location" {
    description = "Location of resources"
    type = string
    default = "WestEurope"
}