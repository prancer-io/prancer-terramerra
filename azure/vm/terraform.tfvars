location              = "eastus2"
vnet_name             = "prancer-vnet"
resource_group        = "prancer-test-rg"
address_space         = "10.254.0.0/16"
dns_server            = "10.254.0.1"

subnet_name           = "prancer-subnet"
address_prefixes      = ["10.254.0.0/24"]

vm_lin_os             = "UbuntuServer"
vm_lin_size           = "Standard_DS1_V2" 
vm_lin_public_dns     = "prancer-test-linux-vm"

vm_win_hostname       = "prancerwinvm"
vm_win_password       = "nakfocsUfiss0or+"
vm_win_os             = "WindowsServer"
vm_win_size           = "Standard_DS1_V2"
vm_win_public_dns     = "prancer-test-win-server"

tags                  = {}
