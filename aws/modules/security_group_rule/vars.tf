variable "description" {
  description = ""
  default = ""
}

variable "type" {
  description = "The type of rule being created. Valid options are ingress (inbound) or egress (outbound)."
  default = "ingress"
}

variable "from_port" {
  description = "The start port."
  default = 0
}

variable "to_port" {
  description = "The end port."
  default = 65535
}

variable "protocol" {
  description = "The protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
  default = "tcp"
}

variable "cidr_blocks" {
  description = "List of CIDR blocks. Cannot be specified with source_security_group_id."
  default = []
}

variable "self" {
  description = "If true, the security group itself will be added as a source to this ingress rule. "
  default = null
}

variable "security_group_id" {
  description = "The security group to apply this rule to."
  default = "sg-123456"
}
