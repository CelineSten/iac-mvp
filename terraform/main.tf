terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=3.11.0"
        }
    }

    provider "azurerm" {
        features {}
        use_oidc = true
        subscription_id = var.subscription_id
    }
}