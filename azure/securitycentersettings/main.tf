module "setting_mcas" {
  source            = "../modules/securityCenterSettings/"
  settings_name     = var.mcas_settings_name
  settings_enabled     = var.mcas_settings_enabled
}


module "setting_wdatp" {
  source            = "../modules/securityCenterSettings/"
  settings_name     = var.wdatp_settings_name
  settings_enabled     = var.wdatp_settings_enabled
}