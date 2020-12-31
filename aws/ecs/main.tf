module "ecs" {
  source  = "../modules/ecs"
  name                      = var.name
  enable_container_insights = var.enable_container_insights
  tags                      = var.tags
}

module "ecs_task_definition" {
  source  = "../modules/ecsTaskDefinition"
  family                   = var.family
  container_definitions    = file("container_definition.json")
  task_role_arn            = var.task_role_arn
  execution_role_arn       = var.execution_role_arn
  network_mode             = var.network_mode
  cpu                      = var.cpu
  memory                   = var.memory
}
