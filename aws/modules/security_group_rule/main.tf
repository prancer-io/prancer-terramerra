resource "aws_security_group_rule" "sgroup_rule" {
  type                 = var.type
  from_port            = var.from_port
  to_port              = var.to_port
  protocol             = var.protocol
  cidr_blocks          = var.cidr_blocks
  self                 = var.self
  security_group_id    = "$${module.security_group.id}"
  compiletime_identity = "module.security_group_rule"
}
