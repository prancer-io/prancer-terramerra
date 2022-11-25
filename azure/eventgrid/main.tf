resource "azurerm_eventgrid_domain" "example" {
  name                = "my-eventgrid-domain"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = "Production"
  }
}

resource "azurerm_eventgrid_topic" "event-grid-topic" {
  for_each            = { for topic in var.event_grid_topics : topic.name => topic }
  name                = format("event-grid-topic-%s-%s", lookup(each.value, "name"), var.environment)
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = lookup(each.value, "tags", {})
}


resource "azurerm_eventgrid_event_subscription" "event-subscription" {
  for_each                             = var.event_subscriptions
  name                                 = format("%s%s", each.key, var.environment)
  scope                                = each.value["scope"]
  advanced_filtering_on_arrays_enabled = each.value["advanced_filtering_on_arrays_enabled"]
  event_delivery_schema                = each.value["event_delivery_schema"]
  included_event_types                 = each.value["included_event_types"]
  azure_function_endpoint {
    function_id                       = each.value["azure_function_endpoint"].function_id
    max_events_per_batch              = each.value["azure_function_endpoint"].max_events_per_batch
    preferred_batch_size_in_kilobytes = each.value["azure_function_endpoint"].preferred_batch_size_in_kilobytes
  }

  depends_on = [
    azurerm_eventgrid_topic.event-grid-topic
  ]
}