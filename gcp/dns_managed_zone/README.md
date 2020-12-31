# Terramerra: Compute Subnetwork

Compliance code | Filename       | Code snippet problem           | Fixed code
----------------|----------------|--------------------------------|-----------------------------------
PR-GCP-0003-TRF |terraform.tfvars|dnssec = [{state = "off"}]      |dnssec = [{state = "on"}]
PR-GCP-0004-TRF |terraform.tfvars|dnssec_keys = [{algorithm  = "rsasha1"}]|dnssec_keys = [{algorithm  = "rsasha512"}]
PR-GCP-0005-TRF |terraform.tfvars|dnssec_keys = [{algorithm  = "rsasha1"}]|dnssec_keys = [{algorithm  = "rsasha512"}]
