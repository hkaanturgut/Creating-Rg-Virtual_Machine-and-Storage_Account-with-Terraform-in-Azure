// *** Windows Virtual Machine Variables ***
variable "rg_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "vm_name" {
  description = ""
  type        = string
}
variable "vm_size" {
  description = ""
  type        = string
}
variable "admin_username" {
  description = ""
  type        = string
}
variable "admin_password" {
  description = ""
  type        = string
}
variable "nic_tags" {
  description = ""
  type        = any
}
variable "vm_tags" {
  description = ""
  type        = any
}

// IP Config
variable "nic_name" {
  description = ""
  type        = string
}
variable "ip_conf_name" {
  description = ""
  type        = string
}
variable "enable_accelerated_networking" {
  description = ""
  type        = string
}
variable "subnet_id" {
  description = ""
  type        = string
}
variable "private_ip_address_allocation" {
  description = ""
  type        = string
}
// OS Disk
variable "os_disk_caching" {
  description = ""
  type        = string
}
variable "os_disk_storage_account_type" {
  description = ""
  type        = string
}
variable "os_disk_size_gb" {
  description = ""
  type        = string
}
// Source Image Reference
variable "source_image_reference_publisher" {
  description = ""
  type        = string
}
variable "source_image_reference_offer" {
  description = ""
  type        = string
}
variable "source_image_reference_sku" {
  description = ""
  type        = string
}
variable "source_image_reference_version" {
  description = ""
  type        = string
}