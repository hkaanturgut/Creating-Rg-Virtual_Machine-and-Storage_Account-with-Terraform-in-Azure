// Create Subnet
resource "azurerm_subnet" "subnet" {
  for_each = var.subnets
  name                 = each.key
  resource_group_name = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = each.value.address_prefixes
}