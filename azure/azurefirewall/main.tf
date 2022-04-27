provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {
}

resource "azurerm_resource_group" "test" {
  name     = "acctestRG-fw"
  location = "eastus2"
}

resource "azurerm_firewall" "test" {
  name                = "acctestfirewall"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.test.id
    public_ip_address_id = azurerm_public_ip.test.id
  }

  firewall_policy_id = azurerm_firewall_policy.test.id

  lifecycle {
    create_before_destroy = true
  }
}

resource "azurerm_subnet" "test" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_public_ip" "test" {
  name                = "acctestpip"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_virtual_network" "test" {
  name                = "acctestvirtnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
}

resource "azurerm_firewall_policy" "test" {
  name                     = "acctest-networkfw-Policy"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  sku                      = "Premium"
  threat_intelligence_mode = "Off"
  threat_intelligence_allowlist {
    ip_addresses = ["1.1.1.1", "2.2.2.2"]
    fqdns        = ["foo.com", "bar.com"]
  }
  dns {
    servers       = ["1.1.1.1", "2.2.2.2"]
    proxy_enabled = true
  }
  intrusion_detection {
    mode = "Alert"
    signature_overrides {
      state = "Alert"
      id    = "1"
    }
    traffic_bypass {
      name              = "Name bypass traffic settings"
      description       = "Description bypass traffic settings"
      protocol          = "Any"
      destination_ports = ["*"]
      source_ip_groups = [
        azurerm_ip_group.test_source.id,
      ]
      destination_ip_groups = [
        azurerm_ip_group.test_destination.id,
      ]
    }
  }
  identity {
    type = "UserAssigned"
    user_assigned_identity_ids = [
      azurerm_user_assigned_identity.test.id,
    ]
  }
  tls_certificate {
    key_vault_secret_id = azurerm_key_vault_certificate.test.secret_id
    name                = azurerm_key_vault_certificate.test.name
  }
  private_ip_ranges = ["172.16.0.0/12", "192.168.0.0/16"]
  tags = {
    env = "Test"
  }
}

resource "azurerm_key_vault_certificate" "test" {
  name         = "AzureFirewallPolicyCertificate"
  key_vault_id = azurerm_key_vault.test.id

  certificate {
    contents = filebase64("testdata/certificate.pfx")
  }

  certificate_policy {
    issuer_parameters {
      name = "Self"
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = false
    }

    secret_properties {
      content_type = "application/x-pkcs12"
    }
  }

  depends_on = [azurerm_key_vault_access_policy.test2]
}

resource "azurerm_key_vault" "test" {
  name                            = "tlskv"
  location                        = azurerm_resource_group.test.location
  resource_group_name             = azurerm_resource_group.test.name
  enabled_for_disk_encryption     = true
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = "standard"
  purge_protection_enabled        = true
}

resource "azurerm_key_vault_access_policy" "test2" {
  key_vault_id = azurerm_key_vault.test.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  key_permissions = [
    "backup",
    "create",
    "delete",
    "get",
    "import",
    "list",
    "purge",
    "recover",
    "restore",
    "update"
  ]

  certificate_permissions = [
    "backup",
    "create",
    "get",
    "list",
    "import",
    "purge",
    "delete",
    "recover",
  ]

  secret_permissions = [
    "get",
    "list",
    "set",
    "purge",
    "delete",
    "recover"
  ]
}
