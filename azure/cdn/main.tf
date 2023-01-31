resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = "${var.location}"
}

resource "azurerm_storage_account" "stor" {
  name                     = "${var.prefix}stor"
  location                 = "${azurerm_resource_group.example.location}"
  resource_group_name      = "${azurerm_resource_group.example.name}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_cdn_profile" "example" {
  name                = "${var.prefix}-cdn"
  location            = "${azurerm_resource_group.example.location}"
  resource_group_name = "${azurerm_resource_group.example.name}"
  sku                 = "Standard_Akamai"
}

resource "azurerm_cdn_endpoint" "example" {
  name                = "${var.prefix}-cdn"
  profile_name        = "${azurerm_cdn_profile.example.name}"
  location            = "${azurerm_resource_group.example.location}"
  resource_group_name = "${azurerm_resource_group.example.name}"

  origin {
    name       = "${var.prefix}origin1"
    host_name  = "www.contoso.com"
    http_port  = 80
    https_port = 443
  }
}

data "azurerm_dns_zone" "example" {
  name                = "example-domain.com"
  resource_group_name = "${azurerm_resource_group.example.name}"
}

resource "azurerm_dns_cname_record" "example" {
  name                = "example"
  zone_name           = data.azurerm_dns_zone.example.name
  resource_group_name = data.azurerm_dns_zone.example.resource_group_name
  ttl                 = 3600
  target_resource_id  = azurerm_cdn_endpoint.example.id
}

resource "azurerm_cdn_endpoint_custom_domain" "example" {
  name            = "example-domain"
  cdn_endpoint_id = azurerm_cdn_endpoint.example.id
  host_name       = "${azurerm_dns_cname_record.example.name}.${data.azurerm_dns_zone.example.name}"
}