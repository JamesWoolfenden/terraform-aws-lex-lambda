resource "aws_lambda_function" "withintent" {
  # checkov:skip=CKV_AWS_115: ADD REASON
  # checkov:skip=CKV_AWS_116: ADD REASON
  description   = var.description
  function_name = var.name
  filename      = var.filename
  handler       = var.handler
  layers        = var.layers
  memory_size   = var.memory_size
  role          = var.role_arn
  runtime       = var.runtime
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
  timeout       = var.timeout
  kms_key_arn   = var.kms_key_id

  tracing_config {
    mode = "PassThrough"
  }

  environment {
    variables = var.envvar
  }

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  lifecycle {
    ignore_changes = [
      last_modified,
      tags,
    ]
  }

  tags = var.common_tags
}
