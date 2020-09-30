module "vpc" {
  source  = "../modules/vpc"
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  enable_ipv6                      = var.enable_ipv6
  tags                             = var.tags
}

module "subnet" {
  source  = "../modules/subnet"
  vpc_id                          = module.vpc.vpc_id
  subnet_cidr_block               = var.subnet_cidr_block
  availability_zone               = var.availability_zone
  availability_zone_id            = var.availability_zone_id
  map_public_ip_on_launch         = var.map_public_ip_on_launch
  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  ipv6_cidr_block                 = var.ipv6_cidr_block
  tags                            = var.tags
}
