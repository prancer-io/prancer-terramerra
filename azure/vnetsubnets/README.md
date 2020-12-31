# Terramerra: Virtual Network Subnet

Compliance code | Filename       | Code snippet problem | Fixed code
----------------|----------------|----------------------|---------------------------------
PR-AZR-0066-TRF |terraform.tfvars|subnet_nsg = []       |subnet_nsg = [[1, "nsg-name"]]
PR-AZR-0067-TRF |terraform.tfvars|subnet_nsg = []       |subnet_nsg = [[1, "nsg-name"]]
