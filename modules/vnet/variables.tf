// Variables for VNET
variable "rg_name" {
  type = string
}
variable "location" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "vnet_address_space" {
  type = list(string)
}
variable "vnet_tags" {
  type = map(any)
  }
