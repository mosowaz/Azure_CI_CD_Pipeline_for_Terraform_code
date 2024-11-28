variable "rg_name" {
  type    = string
  default = "rg-ADO-2"
}

variable "storage_account" {
  type = object({
    name                     = string
    account_tier             = string
    account_replication_type = string
    account_kind             = string
    access_tier              = string
  })
  default = {
    name                     = "mystorageacct"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    access_tier              = "Hot"
  }
}

variable "container" {
  type = object({
    name        = string
    access_type = string
  })
  default = {
    name        = "storage-container"
    access_type = "private"
  }
}
/*
variable "mypublic_ip" {
  type = string
}
*/
variable "key_vault_name" {
  default = "My-Lab-keyvault"
}

variable "service_principal" {
  default = "SPN-ADO-2"
}

# ********* Key Vault properties for SPN ********
variable "spn_client_name" {
  default = "SPN2-client-id"
}

variable "spn_subcription_name" {
  default = "SPN2-subscription-id"
}

variable "spn_tenant_name" {
  default = "SPN2-tenant-id"
}

variable "spn_secret_name" {
  default = "SPN2-client-secret"
}