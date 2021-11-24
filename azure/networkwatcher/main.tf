resource "azurerm_resource_group" "application1" {
  name     = "app1_rg"
  location = "northcentralus"
}

# Networking components to be monitored
resource "azurerm_network_security_group" "application1" {
  name                = "application1"
  location            = azurerm_resource_group.application1.location
  resource_group_name = azurerm_resource_group.application1.name

  security_rule {
    name                       = "test123"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_storage_account" "network_log_data" {
  name                = "applogdata"
  resource_group_name = azurerm_resource_group.application1.name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = "GRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_log_analytics_workspace" "traffic_analytics" {
  name                = "app007-traffic-analytics"
  location            = var.location
  resource_group_name = azurerm_resource_group.application1.name
  retention_in_days   = 90
  daily_quota_gb      = 10
}

resource "azurerm_network_watcher" "app1_traffic" {
  name                = "NetworkWatcher_northcentralus"
  location            = var.location
  resource_group_name = azurerm_resource_group.application1.name
}

resource "azurerm_network_watcher_flow_log" "app1_network_logs" {
  network_watcher_name = azurerm_network_watcher.app1_traffic.name
  resource_group_name  = azurerm_network_watcher.app1_traffic.resource_group_name

  network_security_group_id = azurerm_network_security_group.application1.id
  storage_account_id        = azurerm_storage_account.network_log_data.id
  enabled                   = false

  retention_policy {
    enabled = true
    days    = 90
  }

  traffic_analytics {
    enabled               = var.traffic_analytics_enable
    workspace_id          = azurerm_log_analytics_workspace.traffic_analytics.workspace_id
    workspace_region      = azurerm_log_analytics_workspace.traffic_analytics.location
    workspace_resource_id = azurerm_log_analytics_workspace.traffic_analytics.id
    interval_in_minutes   = 10
  }
}