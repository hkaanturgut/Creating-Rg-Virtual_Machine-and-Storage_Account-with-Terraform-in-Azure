// *** Azure Network Interface ***

resource "azurerm_network_interface" "nic" {
  name                          = var.nic_name
  location                      = var.location
  resource_group_name           = var.rg_name
  enable_accelerated_networking = var.enable_accelerated_networking
  ip_configuration {
    name                          = var.ip_conf_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
  tags = var.nic_tags
}

// *** Azure Windows Virtual Machine ***
resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  tags                = var.vm_tags
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
    disk_size_gb         = var.os_disk_size_gb
  }
  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  }
}