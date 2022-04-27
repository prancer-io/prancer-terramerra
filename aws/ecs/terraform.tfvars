name                      = "prancer-ecs"
enable_container_insights = false

family             = "prancer-task"
task_role_arn      = null
execution_role_arn = "String<ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume>"
network_mode       = "bridge"
cpu                = 256
memory             = 1024

tags = {
  environment = "Production"
  project     = "Prancer"
}
