module "network" {
  source                          = "../modules/compute_network/"
  net_name                        = var.net_name
  net_description                 = var.net_description
  auto_create_subnetworks         = var.auto_create_subnetworks
  routing_mode                    = var.routing_mode
  project                         = var.project
  delete_default_routes_on_create = var.delete_default_routes_on_create
}
