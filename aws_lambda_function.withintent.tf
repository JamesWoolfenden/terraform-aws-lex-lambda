resource "aws_lambda_function" "withintent" {
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
  tags          = var.common_tags
  timeout       = var.timeout

  environment {
    variables = var.envvar
  }

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }


  lifecycle {
    ignore_changes = [
      "last_modified",
      "tags",
    ]
  }
}
