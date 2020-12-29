# Terramerra: Compute Instance

Compliance code | Filename       | Code snippet problem   | Fixed code
----------------|----------------|------------------------|-----------------------------------
PR-GCP-0070-TRF |terraform.tfvars|can_ip_forward = true   |can_ip_forward = false
PR-GCP-0071-TRF |terraform.tfvars|vm_metadata = {}        |vm_metadata = {block-project-ssh-keys = true}
PR-GCP-0072-TRF |terraform.tfvars|vm_metadata = {serial-port-enable = "true"}|vm_metadata = {serial-port-enable = "false"}
PR-GCP-0091-TRF |terraform.tfvars|scheduling_preemptible = true|scheduling_preemptible = false
=               |                |scheduling_automatic_restart = false|scheduling_automatic_restart = true
PR-GCP-0092-TRF |terraform.tfvars|vm_metadata = {}        |vm_metadata = {block-project-ssh-keys = true}
PR-GCP-0093-TRF |terraform.tfvars|labels = {}             |labels = {environment = "prod"}
PR-GCP-0094-TRF |terraform.tfvars|labels = {}             |labels = {environment = "prod"}
=               |                |vm_metadata = {}        |vm_metadata = {block-project-ssh-keys = true}
