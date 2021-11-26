name                      = "prancer-ecs"
enable_container_insights = false

family             = "prancer-task"
task_role_arn      = null
execution_role_arn = ""
network_mode       = "bridge"
cpu                = 256
memory             = 1024

tags                      = {
  environment = "Production"
  project = "Prancer"
}
