location       = "eastus2"
vnet_name      = "prancer-vnet"
resource_group = "prancer-test-rg"
address_space  = "10.254.0.0/16"
dns_server     = "10.254.0.1"

subnet_name_fe      = "prancer-frontend"
address_prefixes_fe = ["10.254.0.0/24"]

subnet_name_be      = "prancer-backend"
address_prefixes_be = ["10.254.2.0/24"]

pip_name   = "prancer-pip"
pip_type   = "Dynamic"
pip_sku    = "Basic"
ip_version = "IPv4"

app_gw_name            = "prancer-app-gw"
app_gw_sku             = "WAF_Medium"
app_gw_tier            = "WAF"
app_gw_capacity        = "2"
app_gw_ip              = "prancer-app-gw-ip-conf"
app_gw_fe_port         = "80"
app_gw_be_http_cookie  = "Disabled"
app_gw_be_http_path    = "/login/"
app_gw_be_http_port    = "80"
app_gw_be_http_proto   = "Http"
app_gw_be_http_timeout = "60"
app_gw_listener_proto  = "Http"
app_gw_req_route_type  = "Basic"
min_protocol_version   = "tlsv1_3"
waf_enabled            = false
waf_firewall_mode      = "Detection"
waf_rule_set_type      = "OWASP"
waf_rule_set_version   = "2.2.9"

tags = {
  environment = "Production"
  project     = "Prancer"
}
