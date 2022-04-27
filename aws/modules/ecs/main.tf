resource "aws_ecs_cluster" "ecs" {
  name = var.name

  setting {
    name  = "containerInsights"
    value = var.enable_container_insights ? "enabled" : "disabled"
  }

  tags = var.tags
}

resource "aws_ecs_service" "mongo" {
  name                   = "mongodb"
  cluster                = aws_ecs_cluster.foo.id
  task_definition        = aws_ecs_task_definition.mongo.arn
  desired_count          = 3
  iam_role               = aws_iam_role.foo.arn
  depends_on             = [aws_iam_role_policy.foo]
  enable_execute_command = true
  launch_type            = "EC2"

  ordered_placement_strategy {
    type  = "binpack"
    field = "cpu"
  }

  network_configuration {
    subnets          = "List<Subnets associated with the task or service>"
    security_groups  = []
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.foo.arn
    container_name   = "mongo"
    container_port   = 8080
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}

data "aws_ecs_service" "example" {
  service_name = "example"
  cluster_arn  = data.aws_ecs_cluster.example.arn
}


resource "aws_lb_target_group" "foo" {
  name        = "tf-example-lb-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "instance"
}
