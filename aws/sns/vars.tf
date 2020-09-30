variable "name" {}
variable "name_prefix" {}
variable "display_name" {}
variable "policy" {}
variable "delivery_policy" {}
variable "application_success_feedback_role_arn" {}
variable "application_success_feedback_sample_rate" {}
variable "application_failure_feedback_role_arn" {}
variable "http_success_feedback_role_arn" {}
variable "http_success_feedback_sample_rate" {}
variable "http_failure_feedback_role_arn" {}
variable "lambda_success_feedback_role_arn" {}
variable "lambda_success_feedback_sample_rate" {}
variable "lambda_failure_feedback_role_arn" {}
variable "sqs_success_feedback_role_arn" {}
variable "sqs_success_feedback_sample_rate" {}
variable "sqs_failure_feedback_role_arn" {}
variable "kms_master_key_id" {}

variable "enable_sns_subscription" {}
variable "endpoint" {}
variable "endpoint_auto_confirms" {}
variable "protocol" {}

variable "tags" {
  type = map
}
