resource "aws_lambda_function" "lambda" {
  description = var.description
  dynamic "environment" {
    for_each = length(var.environment) < 1 ? [] : [var.environment]
    content {
      variables = environment.value.variables
    }
  }
  kms_key_arn                    = var.kms_key_arn
  filename                       = var.s3_bucket == "" ? var.filename : null
  function_name                  = var.function_name
  handler                        = var.handler
  memory_size                    = var.memory_size
  publish                        = var.publish
  reserved_concurrent_executions = var.reserved_concurrent_executions
  role                           = var.iam_role
  runtime                        = var.runtime
  s3_bucket                      = var.filename == "" ? var.s3_bucket : null
  s3_key                         = var.filename == "" ? var.s3_key : null
  s3_object_version              = var.filename == "" ? var.s3_object_version : null
  source_code_hash               = var.source_code_hash
  tags                           = var.tags
  timeout                        = var.timeout

  dynamic "vpc_config" {
    for_each = length(var.vpc_config) < 1 ? [] : [var.vpc_config]
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }

  dead_letter_config {
    target_arn           = ""
  }

  tracing_config {
    mode = var.tracing_mode
  }
}
