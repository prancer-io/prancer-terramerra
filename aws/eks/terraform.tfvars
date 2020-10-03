role_name                     = "prancer-iam-role"
role_path                     = "/"
max_session_duration          = 3600
role_description              = ""
force_detach_policies         = false
role_permissions_boundary_arn = ""
assume_role_policy            = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

cidr_block                      = "10.10.0.0/16"
instance_tenancy                = "default"
enable_dns_hostnames            = false
enable_dns_support              = true
enable_classiclink              = null
enable_classiclink_dns_support  = null
enable_ipv6                     = false

subnet_cidr_block               = ["10.10.1.0/24", "10.10.3.0/24"]
availability_zone               = [null, null]
availability_zone_id            = [null, null]
map_public_ip_on_launch         = false
assign_ipv6_address_on_creation = false
ipv6_cidr_block                 = null

name                              = "prancer-eks"
kubernetes_version                = null
enabled_cluster_log_types         = ["api", "audit"]
cluster_encryption_config_enabled = false
security_group_ids                = []
endpoint_private_access           = false
endpoint_public_access            = true
public_access_cidrs               = null

tags                              = {
  environment = "Production"
  project = "Prancer"
}
