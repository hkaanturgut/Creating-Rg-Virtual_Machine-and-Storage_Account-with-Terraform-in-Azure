// Location
variable "location" {
    type = string
}

// Resource Group 
variable "rg1_name" {
    type = string
}

// Vnet01
variable "vnet01_name" {
    type = any
}
variable "vnet01_address_space" {
    type = any
}
variable "vnet01_tags" {
  type = map(any)
}

// *** Subnets for Vnet01 Variables ***
variable "vnet01_snets" {
  description = ""
  type        = any
}

// Virtual Machine
// Vm 0
variable "vm_name0" {
  description = ""
  type        = string
}
variable "vm_size0" {
  description = ""
  type        = string
}
variable "admin_username0" {
  description = ""
  type        = string
}
variable "admin_password0" {
  description = ""
  type        = string
}
variable "vm_tags0" {
  description = ""
  type        = any
}

// Nic
variable "nic_name0" {
  description = ""
  type        = string
}
variable "ip_conf_name0" {
  description = ""
  type        = string
}
variable "enable_accelerated_networking0" {
  description = ""
  type        = string
}

variable "private_ip_address_allocation0" {
  description = ""
  type        = string
}
variable "nic_tags0" {
  description = ""
  type        = any
}
// OS Disk
variable "os_disk_caching0" {
  description = ""
  type        = string
}
variable "os_disk_storage_account_type0" {
  description = ""
  type        = string
}
variable "os_disk_size_gb0" {
  description = ""
  type        = string
}
// Source Image Reference
variable "source_image_reference_publisher0" {
  description = ""
  type        = string
}
variable "source_image_reference_offer0" {
  description = ""
  type        = string
}
variable "source_image_reference_sku0" {
  description = ""
  type        = string
}
variable "source_image_reference_version0" {
  description = ""
  type        = string
}

// Storage Account
variable "storage_account_name" {
    type = string
  
}
variable "storage_account_account_tier" {
    type = any
  
}
variable "storage_account_account_replication_type" {
    type = string
  
}
variable "storage_account_tags" {
    type = map(any)
  
}