resource "azurerm_security_center_contact" "contacts" {
  email = var.sec_center_email
  phone = var.sec_center_phone

  alert_notifications = var.sec_center_alert_notification
  alerts_to_admins    = var.sec_center_alerts_to_admin
}
