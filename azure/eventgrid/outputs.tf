output "event_grid_topics" {
  value = {
    for topic in azurerm_eventgrid_topic.event-grid-topic :
    topic.name => {
      name                 = topic.name
      id                   = topic.id
      topic_endpoint       = topic.endpoint
      primary_access_key   = topic.primary_access_key
      secondary_access_key = topic.secondary_access_key
    }
  }
  sensitive = true
}