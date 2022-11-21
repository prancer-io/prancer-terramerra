module "network" {
  source                          = "../modules/compute_network/"
  net_name                        = var.net_name
  net_description                 = var.net_description
  auto_create_subnetworks         = var.auto_create_subnetworks
  routing_mode                    = var.routing_mode
  project                         = var.project
  delete_default_routes_on_create = var.delete_default_routes_on_create
}

module "firewall" {
  source           = "../modules/compute_firewall/"
  fw_name          = var.fw_name
  fw_network_id    = module.network.id
  fw_source_ranges = var.fw_source_ranges
  fw_source_tags   = var.fw_source_tags
}
