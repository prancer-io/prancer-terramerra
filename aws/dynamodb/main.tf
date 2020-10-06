module "dynamodb_table" {
  source                     = "../modules/dynamodb"
  name                       = var.name
  enabled                    = var.enabled
  billing_mode               = var.billing_mode
  enable_streams             = var.enable_streams
  enable_encryption          = var.enable_encryption
  hash_key                   = var.hash_key
  range_key                  = var.range_key
  dynamodb_attributes        = var.dynamodb_attributes
  local_secondary_index_map  = var.local_secondary_index_map
  global_secondary_index_map = var.global_secondary_index_map
  tags                       = var.tags
}
