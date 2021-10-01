module "iam_role" {
  source                        = "git::https://github.com/prancer-io/prancer-terramerra.git//aws/modules/iam_role?ref=aws-terraform"
  role_name                     = var.role_name
  role_path                     = var.role_path
  max_session_duration          = var.max_session_duration
  role_description              = var.role_description
  force_detach_policies         = var.force_detach_policies
  role_permissions_boundary_arn = var.role_permissions_boundary_arn
  assume_role_policy            = var.assume_role_policy
  tags                          = var.tags
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
    role       = module.iam_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

module "vpc" {
  source                           = "github.com/prancer-io/prancer-terramerra.git//aws/modules/vpc"
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  enable_ipv6                      = var.enable_ipv6
  tags                             = var.tags
}

module "internet_gateway" {
  source  = "../modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  tags   = var.tags
}

module "subnets" {
  source = "../modules/subnet"
  count                           = length(var.subnet_cidr_block)
  vpc_id                          = module.vpc.vpc_id
  subnet_cidr_block               = element(var.subnet_cidr_block, count.index)
  availability_zone               = element(var.availability_zone, count.index)
  availability_zone_id            = element(var.availability_zone_id, count.index)
  map_public_ip_on_launch         = var.map_public_ip_on_launch
  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  ipv6_cidr_block                 = var.ipv6_cidr_block
  tags                            = var.tags
}

module "eks" {
  source = "../modules/eks"
  name                              = var.name
  role_arn                          = module.iam_role.arn
  kubernetes_version                = var.kubernetes_version
  enabled_cluster_log_types         = var.enabled_cluster_log_types
  cluster_encryption_config_enabled = var.cluster_encryption_config_enabled
  security_group_ids                = var.security_group_ids
  subnet_ids                        = module.subnets.*.id
  endpoint_private_access           = var.endpoint_private_access
  endpoint_public_access            = var.endpoint_public_access
  public_access_cidrs               = var.public_access_cidrs
  tags                              = var.tags
}
