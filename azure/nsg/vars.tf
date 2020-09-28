variable "location" {
  description = "The location/region where NSG will be created. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the NSG will be created."
}

variable "nsg_name" {
  description = "Custom name provided to NSG group."
}

variable "nsr_names" {
  description = "The names of the security rule."
  type        = list
  default     = ["test-netssec-rule-01"]
}

variable "nsr_priorities" {
  description = "Specifies the priority of the rule. The value can be between 100 and 4096."
  type        = list
  default     = [100]
}

variable "nsr_directions" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic (Inbound or Outbound)."
  type        = list
  default     = ["Inbound"]
}

variable "nsr_accesses" {
  description = "Specifies whether network traffic is allowed or denied (Allow or Deny)."
  type        = list
  default     = ["Allow"]
}

variable "nsr_protocols" {
  description = "Network protocol this rule applies to. Possible values include Tcp, Udp or * (which matches both)."
  type        = list
  default     = ["Tcp"]
}

variable "nsr_src_ports" {
  description = "Source Port or Range. Integer or range between 0 and 65535 or * to match any."
  type        = list
  default     = ["*"]
}

variable "nsr_dst_ports" {
  description = "Destination Port or Range. Integer or range between 0 and 65535 or * to match any."
  type        = list
  default     = ["80"]
}

variable "nsr_src_addresses" {
  description = "CIDR or source IP range or * to match any IP. Tags can also be used."
  type        = list
  default     = ["*"]
}

variable "nsr_dst_addresses" {
  description = "CIDR or destination IP range or * to match any IP. Tags can also be used."
  type        = list
  default     = ["*"]
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type = map
}
