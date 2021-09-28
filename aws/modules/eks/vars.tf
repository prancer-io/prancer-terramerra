
variable "name" {
  description = "Name of the cluster."
  default     = ""
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map
  default     = {}
}

variable "role_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf."
  default     = ""
}

variable "kubernetes_version" {
  description = "Desired Kubernetes master version."
  default     = "1.9.2"
}

variable "enabled_cluster_log_types" {
  description = "k8s logging to enable."
  default     = false
}

variable "cluster_encryption_config_enabled" {
  description = "Cluster encryption config enable."
  default     = false
}

variable "cluster_encryption_config" {
  description = "Encryption config."
  type        = map
  default     = {
    resources = null
    provider_key_arn = null
  }
}

variable "security_group_ids" {
  description = "List of security group IDs for the cross-account elastic network interfaces that Amazon EKS."
}

variable "subnet_ids" {
  description = " List of subnet IDs."
}

variable "endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  default     = false
}

variable "endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled."
  default     = true
}

variable "public_access_cidrs" {
  description = "List of CIDR blocks."
}
