resource "aws_redshift_parameter_group" "rpg" {
  name   = var.parameter_name
  family = var.parameter_family

  dynamic "parameter" {
    for_each = var.parameter_map
    content {
      name  = parameter.key
      value = parameter.value
    }
  }
}
