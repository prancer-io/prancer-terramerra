resource "aws_ecs_cluster" "ecs" {
  name = var.name

  setting {
    name  = "containerinsights"
    value = "enabled"
  }

  tags = var.tags
}
