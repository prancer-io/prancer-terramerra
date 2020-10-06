variable "vpc_enabled" {
  type        = bool
  description = "Set to false if ES should be deployed outside of VPC."
  default     = true
}

variable "tags" {
  type        = map
  description = "Tags"
  default     = {}
}

variable "subnet_ids" {
  type        = list(string)
  description = "VPC Subnet IDs"
  default     = []
}

variable "elasticsearch_version" {
  type        = string
  default     = "7.4"
  description = "Version of Elasticsearch to deploy (_e.g._ `7.4`, `7.1`, `6.8`, `6.7`, `6.5`, `6.4`, `6.3`, `6.2`, `6.0`, `5.6`, `5.5`, `5.3`, `5.1`, `2.3`, `1.5`"
}

variable "instance_type" {
  type        = string
  default     = "t2.small.elasticsearch"
  description = "Elasticsearch instance type for data nodes in the cluster"
}

variable "instance_count" {
  type        = number
  description = "Number of data nodes in the cluster"
  default     = 4
}

variable "warm_enabled" {
  type        = bool
  default     = false
  description = "Whether AWS UltraWarm is enabled"
}

variable "warm_count" {
  type        = number
  default     = 2
  description = "Number of UltraWarm nodes"
}

variable "warm_type" {
  type        = string
  default     = "ultrawarm1.medium.elasticsearch"
  description = "Type of UltraWarm nodes"
}

variable "zone_awareness_enabled" {
  type        = bool
  default     = true
  description = "Enable zone awareness for Elasticsearch cluster"
}

variable "zone_awareness_config" {
  type        = list
  default     = []
  description = "Zone awareness config for Elasticsearch cluster"
}

variable "ebs_volume_size" {
  type        = number
  description = "EBS volumes for data storage in GB"
  default     = 0
}

variable "ebs_volume_type" {
  type        = string
  default     = "gp2"
  description = "Storage type of EBS volumes"
}

variable "ebs_iops" {
  type        = number
  default     = 0
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the Provisioned IOPS EBS volume type"
}

variable "encrypt_at_rest_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable encryption at rest"
}

variable "encrypt_at_rest_kms_key_id" {
  type        = string
  default     = ""
  description = "The KMS key ID to encrypt the Elasticsearch domain with. If not specified, then it defaults to using the AWS/Elasticsearch service KMS key"
}

variable "domain_endpoint_options_enforce_https" {
  type        = bool
  default     = false
  description = "Whether or not to require HTTPS"
}

variable "domain_endpoint_options_tls_security_policy" {
  type        = string
  default     = "Policy-Min-TLS-1-0-2019-07"
  description = "The name of the TLS security policy that needs to be applied to the HTTPS endpoint"
}


variable "log_publishing_index_enabled" {
  type        = bool
  default     = false
  description = "Specifies whether log publishing option for INDEX_SLOW_LOGS is enabled or not"
}

variable "log_publishing_search_enabled" {
  type        = bool
  default     = false
  description = "Specifies whether log publishing option for SEARCH_SLOW_LOGS is enabled or not"
}

variable "log_publishing_application_enabled" {
  type        = bool
  default     = false
  description = "Specifies whether log publishing option for ES_APPLICATION_LOGS is enabled or not"
}

variable "log_publishing_index_cloudwatch_log_group_arn" {
  type        = string
  default     = ""
  description = "ARN of the CloudWatch log group to which log for INDEX_SLOW_LOGS needs to be published"
}

variable "log_publishing_search_cloudwatch_log_group_arn" {
  type        = string
  default     = ""
  description = "ARN of the CloudWatch log group to which log for SEARCH_SLOW_LOGS needs to be published"
}

variable "log_publishing_application_cloudwatch_log_group_arn" {
  type        = string
  default     = ""
  description = "ARN of the CloudWatch log group to which log for ES_APPLICATION_LOGS needs to be published"
}

variable "automated_snapshot_start_hour" {
  type        = number
  description = "Hour at which automated snapshots are taken, in UTC"
  default     = 0
}

variable "dedicated_master_enabled" {
  type        = bool
  default     = false
  description = "Indicates whether dedicated master nodes are enabled for the cluster"
}

variable "dedicated_master_count" {
  type        = number
  description = "Number of dedicated master nodes in the cluster"
  default     = 0
}

variable "dedicated_master_type" {
  type        = string
  default     = "t2.small.elasticsearch"
  description = "Instance type of the dedicated master nodes in the cluster"
}

variable "advanced_options" {
  type        = map(string)
  default     = {}
  description = "Key-value string pairs to specify advanced configuration options"
}

variable "domain_name" {
  type        = string
  default     = ""
  description = "The name of the domain for Elasticsearch."
}

variable "node_to_node_encryption_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable node-to-node encryption"
}

variable "cognito_authentication_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable Amazon Cognito authentication with Kibana"
}

variable "cognito_user_pool_id" {
  type        = string
  default     = ""
  description = "The ID of the Cognito User Pool to use"
}

variable "cognito_identity_pool_id" {
  type        = string
  default     = ""
  description = "The ID of the Cognito Identity Pool to use"
}

variable "cognito_iam_role_arn" {
  type        = string
  default     = ""
  description = "ARN of the IAM role that has the AmazonESCognitoAccess policy attached"
}

variable "advanced_security_options_enabled" {
  type        = bool
  default     = false
  description = "AWS Elasticsearch Kibana enchanced security plugin enabling (forces new resource)"
}

variable "advanced_security_options_internal_user_database_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable or not internal Kibana user database for ELK OpenDistro security plugin"
}

variable "advanced_security_options_master_user_arn" {
  type        = string
  default     = ""
  description = "ARN of IAM user who is to be mapped to be Kibana master user (applicable if advanced_security_options_internal_user_database_enabled set to false)"
}

variable "advanced_security_options_master_user_name" {
  type        = string
  default     = ""
  description = "Master user username (applicable if advanced_security_options_internal_user_database_enabled set to true)"
}

variable "advanced_security_options_master_user_password" {
  type        = string
  default     = ""
  description = "Master user password (applicable if advanced_security_options_internal_user_database_enabled set to true)"
}
