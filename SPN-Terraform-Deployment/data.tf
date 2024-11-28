data "azuread_client_config" "current" {}

data "azuread_service_principal" "spn_ado" {
  object_id = azuread_service_principal.spn_ado.object_id
}

data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "current" {}