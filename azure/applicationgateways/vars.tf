variable "location" {}
variable "vnet_name" {}
variable "resource_group" {}
variable "address_space" {}
variable "dns_server" {}
variable "subnet_name_fe" {}
variable "address_prefixes_fe" {}
variable "subnet_name_be" {}
variable "address_prefixes_be" {}
variable "pip_name" {}
variable "pip_type" {}
variable "pip_sku" {}
variable "ip_version" {}
variable "app_gw_name" {}
variable "app_gw_sku" {}
variable "app_gw_tier" {}
variable "app_gw_capacity" {}
variable "app_gw_ip" {}
variable "app_gw_fe_port" {}
variable "app_gw_be_http_cookie" {}
variable "app_gw_be_http_path" {}
variable "app_gw_be_http_port" {}
variable "app_gw_be_http_proto" {}
variable "app_gw_be_http_timeout" {}
variable "app_gw_listener_proto" { default = "Https"
}
variable "app_gw_req_route_type" {}
variable "min_protocol_version" {}
variable "waf_enabled" {}
variable "waf_firewall_mode" {}
variable "waf_rule_set_type" {}
variable "waf_rule_set_version" {}
variable "tags" {
  type = map
}
