module "ecs" {
  source  = "../modules/ecs"
  name                      = var.name
  enable_container_insights = var.enable_container_insights
  tags                      = var.tags
}
