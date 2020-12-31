resource "aws_elb" "elb" {
  name               = var.name
  availability_zones = var.availability_zones
  security_groups    = var.security_groups

  dynamic "access_logs" {
    for_each = var.logging_enabled ? [1] : []

    content {
      bucket        = var.bucket
      bucket_prefix = var.bucket_prefix
      interval      = var.log_interval
    }
  }

  dynamic "listener" {
    for_each = var.listener

    content {
      instance_port      = listener.value["instance_port"]
      instance_protocol  = listener.value["instance_protocol"]
      lb_port            = listener.value["lb_port"]
      lb_protocol        = listener.value["lb_protocol"]
      ssl_certificate_id = listener.value["ssl_certificate_id"]
    }
  }

  health_check {
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    timeout             = var.timeout
    target              = var.target
    interval            = var.check_interval
  }

  instances                   = var.instances
  cross_zone_load_balancing   = var.cross_zone_load_balancing
  idle_timeout                = var.idle_timeout
  connection_draining         = var.connection_draining
  connection_draining_timeout = var.connection_draining_timeout

  tags = {
    Name = "foobar-terraform-elb"
  }
}
