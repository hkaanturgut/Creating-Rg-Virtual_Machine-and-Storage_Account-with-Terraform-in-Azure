// RG Modules
module "rg1" {
  source   = "./modules/resource_group"
  rg_name = var.rg1_name
  location = var.location
}

// *** Create Virtual Network ***
module "az104-06-vnet01" {
    source = "./modules/vnet"
    vnet_name = var.vnet01_name
    rg_name = module.rg1.name
    location =  module.rg1.location
    vnet_address_space = var.vnet01_address_space
    vnet_tags = var.vnet01_tags  
}

module "vnet01_snets" {
    source = "./modules/subnet"
    rg_name = module.rg1.name
    vnet_name = module.az104-06-vnet01.name
     subnets  = var.vnet01_snets
}

// Virtual Machine
module "vm1" {
  source = "./modules/virtual_machine"

  // *** Azure Windows Virtual Machine ***
  vm_name             = var.vm_name0
  rg_name          =   var.rg1_name
  location            =  module.rg1.location
  vm_size             = var.vm_size0
  admin_username      = var.admin_username0
  admin_password      = var.admin_password0
  vm_tags             = var.vm_tags0
  // OS Disk
  os_disk_caching              = var.os_disk_caching0
  os_disk_storage_account_type = var.os_disk_storage_account_type0
  os_disk_size_gb              = var.os_disk_size_gb0
  // Source Image Reference
  source_image_reference_publisher = var.source_image_reference_publisher0
  source_image_reference_offer     = var.source_image_reference_offer0
  source_image_reference_sku       = var.source_image_reference_sku0
  source_image_reference_version   = var.source_image_reference_version0
  // *** Azure Network Interface ***
  nic_name                      = var.nic_name0
  enable_accelerated_networking = var.enable_accelerated_networking0
  ip_conf_name                  = var.ip_conf_name0
  subnet_id                     = module.vnet01_snets.subnet_ids[0]
  private_ip_address_allocation = var.private_ip_address_allocation0
  nic_tags                      = var.nic_tags0
}

// Storage Account
module "storage_account1" {
    source = "./modules/storage_account"
    storage_account_name = var.storage_account_name
    rg_name = var.rg1_name
    location = module.rg1.location
    storage_account_account_tier = var.storage_account_account_tier
    storage_account_account_replication_type = var.storage_account_account_replication_type
    storage_account_tags = var.storage_account_tags
  
}