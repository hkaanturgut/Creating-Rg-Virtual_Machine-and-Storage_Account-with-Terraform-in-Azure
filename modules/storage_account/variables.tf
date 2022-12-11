variable "storage_account_name" {
    type = string
  }
  variable "rg_name" {
    type = string
}
variable "location" {
    type = string
}
variable "storage_account_account_tier" {
    type = string
  
}
variable "storage_account_account_replication_type" {
    type = string
  
}
variable "storage_account_tags" {
    type = map(any)
  
}