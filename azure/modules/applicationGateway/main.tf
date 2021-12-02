resource "azurerm_public_ip" "example" {
  name                = "example-pip"
  resource_group_name = var.app_gw_rg
  location            = var.location
  allocation_method   = "Dynamic"
}

resource "azurerm_application_gateway" "appgw" {
  name                = var.app_gw_name
  resource_group_name = var.app_gw_rg
  location            = var.location

  sku {
    name     = var.app_gw_sku
    tier     = var.app_gw_tier
    capacity = var.app_gw_capacity
  }

  gateway_ip_configuration {
    name      = var.app_gw_ip
    subnet_id = var.app_gw_fe_subnet
  }

  frontend_port {
    name = "${var.app_gw_name}-fe-port"
    port = var.app_gw_fe_port
  }

  frontend_ip_configuration {
    name = "${var.app_gw_name}-fe-ip"
  }

  backend_address_pool {
    name = "${var.app_gw_name}-be-pool"
  }

  backend_http_settings {
    name                  = "${var.app_gw_name}-be-http"
    cookie_based_affinity = var.app_gw_be_http_cookie
    path                  = var.app_gw_be_http_path
    port                  = var.app_gw_be_http_port
    protocol              = var.app_gw_be_http_proto
    request_timeout       = var.app_gw_be_http_timeout
  }

  http_listener {
    name                           = "${var.app_gw_name}-listener"
    frontend_ip_configuration_name = "${var.app_gw_name}-fe-ip"
    frontend_port_name             = "${var.app_gw_name}-fe-port"
    protocol                       = var.app_gw_listener_proto
  }

  request_routing_rule {
    name                       = "${var.app_gw_name}-req-route"
    rule_type                  = var.app_gw_req_route_type
    http_listener_name         = "${var.app_gw_name}-listener"
    backend_address_pool_name  = "${var.app_gw_name}-be-pool"
    backend_http_settings_name = "${var.app_gw_name}-be-http"
  }

  ssl_policy {
    min_protocol_version = var.min_protocol_version
  }

  waf_configuration {
    enabled          = var.waf_enabled
    firewall_mode    = var.waf_firewall_mode
    rule_set_type    = var.waf_rule_set_type
    rule_set_version = var.waf_rule_set_version
  }
}
