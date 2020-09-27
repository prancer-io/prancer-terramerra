module "contacts" {
  source                        = "../modules/securityCenterContact/"
  sec_center_email              = var.sec_center_email
  sec_center_phone              = var.sec_center_phone
  sec_center_alert_notification = var.sec_center_alert_notification
  sec_center_alerts_to_admin    = var.sec_center_alerts_to_admin
}
