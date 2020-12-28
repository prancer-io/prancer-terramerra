resource "aws_load_balancer_policy" "elbpolicy" {
  load_balancer_name = var.elb_name
  policy_name        = var.policy_name
  policy_type_name   = var.policy_type

  dynamic "policy_attribute" {
    for_each = var.policy_attribute_map
    content {
      name  = policy_attribute.key
      value = policy_attribute.value
    }
  }
}
