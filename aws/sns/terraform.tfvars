name                                     = "prancer-sns"
name_prefix                              = null
display_name                             = null
policy                                   = null
delivery_policy                          = null
application_success_feedback_role_arn    = null
application_success_feedback_sample_rate = null
application_failure_feedback_role_arn    = null
http_success_feedback_role_arn           = null
http_success_feedback_sample_rate        = null
http_failure_feedback_role_arn           = null
lambda_success_feedback_role_arn         = null
lambda_success_feedback_sample_rate      = null
lambda_failure_feedback_role_arn         = null
sqs_success_feedback_role_arn            = null
sqs_success_feedback_sample_rate         = null
sqs_failure_feedback_role_arn            = null
kms_master_key_id                        = null

enable_sns_subscription                  = false
endpoint                                 = "http://fake-endpoint.example.com"
endpoint_auto_confirms                   = true
protocol                                 = "http"

tags                                     = {
  environment = "Production"
  project = "Prancer"
}
