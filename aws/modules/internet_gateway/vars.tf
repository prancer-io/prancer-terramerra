variable "vpc_id" {
  description = "The VPC ID to create in."
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
