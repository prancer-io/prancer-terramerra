# Terramerra: AKS

Compliance code | Filename       | Code snippet problem            | Fixed code
----------------|----------------|---------------------------------|---------------------------------
PR-AZR-0070-TRF |terraform.tfvars|                                 |no_public_ip = true
PR-AZR-0071-TRF |terraform.tfvars|                                 |virtual_network_id = "/subscriptions/00000000-0000-0000-0000-000000000000/
                |                |                                 |resourceGroups/vnet-rg/providers/Microsoft.Network/virtualNetworks/vnet-eastus-01"
