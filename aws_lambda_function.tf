resource "aws_lambda_function" "withintent" {
  runtime          = "${var.runtime}"
  function_name    = "${var.name}"
  description      = "${var.description}"
  memory_size      = "${var.memory_size}"
  role             = "${var.role_name}"
  filename         = "${var.filename}"
  source_code_hash = "${var.source_code_hash}"
  handler          = "${var.handler}"
  timeout          = "${var.timeout}"

  #  environment {
  #    variables = ["${var.envvar}"]
  #  }

  vpc_config = "${var.vpc_config}"
  tags       = "${var.common_tags}"
  depends_on = [
    "aws_iam_role.withintent",
    "aws_iam_role_policy.withintent",
    "aws_iam_role_policy_attachment.withintent",
  ]
}
