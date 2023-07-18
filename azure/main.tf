# Create a resource group
resource "azurerm_resource_group" "this" {
  name     = "${var.name}-RG"
  location = var.location
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "this" {
  name                = "${var.name}-VN"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = ["10.0.0.0/16"]
}
