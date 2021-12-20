
data "azurerm_client_config" "current" {}


data "azurerm_subscription" "primary" {
}


resource "azurerm_role_definition" "example" {
  name        = "my-custom-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role created via Terraform"

  permissions {
    actions     = "List<One or more Allowed Actions other than \"*\", such as Microsoft.Resources/subscriptions/resourceGroups/read.>"
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id, # /subscriptions/00000000-0000-0000-0000-000000000000
  ]
}
