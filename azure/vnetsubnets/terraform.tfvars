location              = "eastus2"
vnet_name             = "prancer-vnet"
resource_group        = "prancer-test-rg"
address_space         = "10.254.0.0/16"
dns_server            = "10.254.0.1"

subnet_names          = ["prancer-frontend", "prancer-backend", "prancer-backup"]
address_prefixes      = [["10.254.0.0/24"], ["10.254.2.0/24"], ["10.254.222.0/24"]]

subnet_nsg            = [[1, "prancer-test-nsg"]] # list of list [{subnet_names index}, {NSG name}], example: [1, "prancer-nsg"]

tags                  = {
  environment = "Production",
  project     = "Prancer"
}
