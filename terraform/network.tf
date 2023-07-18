resource "azurerm_virtual_network" "vnet" {
  name                = "vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

resource "azurerm_subnet" "subnet" {
    name = -"subnet"
    resource_group_name = var.resource_group_name
    virtual_network_name = data.azurerm_virtual_network.vnet.name
    address_prefixes = [10.0.1.0/24]
}