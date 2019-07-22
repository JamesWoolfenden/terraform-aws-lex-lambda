resource "aws_lambda_function" "withintent" {
  description = var.description
  environment {
    variables = {

    }
  }

  function_name = var.name
  handler       = var.handler
  layers        = var.layers

  memory_size = var.memory_size
  role        = "arn:aws:iam::${var.account_id}:role/${var.role_name}"
  runtime     = var.runtime
  s3_bucket   = var.s3_bucket
  s3_key      = var.s3_key
  tags        = var.common_tags
  timeout     = var.timeout

  vpc_config {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

  depends_on = [
    "aws_iam_role.withintent",
    "aws_iam_role_policy.withintent",
    "aws_iam_role_policy_attachment.withintent",
  ]

  lifecycle {
    ignore_changes = [
      "last_modified",
      "tags",
    ]
  }
}
