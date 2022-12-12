variable "event_grid_topics" {
  type = list(object({
    name                          = string,
    input_schema                  = string
    public_network_access_enabled = bool
    tags                          = map(string)
  }))
}

variable "environment" {
  type        = string
  description = "Specifies the environment of the Event Grid Topic. Changing this forces a new resource to be created."

  validation {
    condition     = contains(["sandbox", "dev", "qa", "preprod", "bat", "prod"], var.environment)
    error_message = "The environment must be one of the specified values sandbox, dev, qa, preprod, bat, prod."
  }
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "event_subscriptions" {
  type = map(object({
    scope                                = string
    event_delivery_schema                = string
    advanced_filtering_on_arrays_enabled = bool
    included_event_types                 = list(string)
    azure_function_endpoint = object({
      function_id                       = string
      max_events_per_batch              = number
      preferred_batch_size_in_kilobytes = number
    })
  }))
}