module "setting_auto_provisioning" {
  source            = "../modules/securityCenterAutoProvisioning/"
  auto_provision    = var.auto_provision
}