resource "azurerm_redis_cache" "example" {
  name                = "example-redis"
  location            = var.location
  resource_group_name = var.rg_name
  capacity            = 0
  family              = "C"
  sku_name            = "Basic"
  enable_non_ssl_port = false
}
