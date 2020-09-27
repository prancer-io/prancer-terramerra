location              = "eastus2"
vnet_name             = "prancer-vnet"
resource_group        = "prancer-test-rg"
address_space         = "10.254.0.0/16"
dns_server            = "10.254.0.1"

subnet_name_fe        = "prancer-frontend"
address_prefixes_fe   = ["10.254.0.0/24"]

subnet_name_be        = "prancer-backend"
address_prefixes_be   = ["10.254.2.0/24"]

frontend_nsg          = null

tags                  = {}
