variable "endpoint" {
  description = "The subscription's endpoint #1."
  type        = string
  default     = ""
}

variable "endpoint_auto_confirms" {
  description = "Boolean indicating whether endpoint #1 is capable of auto confirming subscription (required for HTTP protocols)."
  type        = bool
  default     = false
}

variable "protocol" {
  description = "The protocol you want to use in your endpoint #1. Supported protocols include: http, https, sms, sqs, application, lambda."
  type        = string
  default     = ""
}

variable "topic_arn" {
  description = "The ARN of the topic the subscription belongs to"
  type        = string
}
