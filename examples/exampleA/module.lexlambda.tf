module "lexlambda" {
  source = "../../"

  lambdapermmisions = [{
    action       = "lambda:InvokeFunction"
    statementid  = "Pizza"
    functionname = "${var.name}"
    sourcearn    = "arn:aws:lex:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:intent:Pizza:*"
    principal    = "lex.amazonaws.com"
  }]

  description      = "${var.description}"
  name             = "${var.name}"
  filename         = "${path.cwd}/lambda.zip"
  policyname       = "${var.name}"
  region_name      = "${data.aws_region.current.name}"
  role_name        = "${var.name}"
  account_id       = "${data.aws_caller_identity.current.account_id}"
  source_code_hash = "${data.archive_file.lambda.output_base64sha256}"
  common_tags      = "${var.common_tags}"
}
