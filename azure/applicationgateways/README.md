# Terramerra: Application Gateways

Compliance code | Filename       | Code snippet problem            | Fixed code
----------------|----------------|---------------------------------|--------------------------------
PR-AZR-0011-TRF |terraform.tfvars|min_protocol_version = "TLSv1_0" |min_protocol_version = "TLSv1_2"
PR-AZR-0012-TRF |terraform.tfvars|waf_enabled = false              |waf_enabled = true
