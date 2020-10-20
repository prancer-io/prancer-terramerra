module "network" {
  source                          = "../modules/compute_network/"
  net_name                        = var.net_name
  net_description                 = var.net_description
  auto_create_subnetworks         = var.auto_create_subnetworks
  routing_mode                    = var.routing_mode
  project                         = var.project
  delete_default_routes_on_create = var.delete_default_routes_on_create
}

module "subnet" {
  source                   = "../modules/compute_subnetwork/"
  subnet_name              = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
  location                 = var.location
  network_id               = module.network.id
  log_enabled              = var.log_enabled
  log_aggregation_interval = var.log_aggregation_interval
  log_flow_sampling        = var.log_flow_sampling
  log_metadata             = var.log_metadata
  private_ip_google_access = var.private_ip_google_access
}

