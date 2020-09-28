variable "location" {}
variable "resource_group" {}

variable "acr_name" {}
variable "acr_sku" {}
variable "acr_admin_enabled" {}
variable "acr_georeplication_locations" {}

variable "acr_webhook_name" {}
variable "acr_webhook_service_uri" {}
variable "acr_webhook_status" {}
variable "acr_webhook_scope" {}
variable "acr_webhook_actions" {}
variable "acr_webhook_custom_headers" {}

variable "tags" {
  type = map
}
