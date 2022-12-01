project  = "learning-269422"
location = "us-central1"

vm_name                        = "prancer-vm1"
machine_type                   = "f1-micro"
zone                           = "us-central1-a"
vm_tags                        = ["vm", "test"]
vm_image                       = "debian-cloud/debian-9"
scheduling_enabled             = true
scheduling_preemptible         = true
scheduling_on_host_maintenance = null
scheduling_automatic_restart   = false
network                        = "default"
subnetwork                     = null
vm_access_config               = null
scopes                         = "https://www.googleapis.com/auth/cloud-platform"
email                          = "String<Please Provide valid service account email.>"
can_ip_forward                 = true
vm_metadata                    = { "block-project-ssh-keys" = false }
metadata_startup_script        = ""
labels                         = {}
