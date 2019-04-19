module "lexlambda" {
  source = "../../"

  lambdapermmissions = [{
    action       = "lambda:InvokeFunction"
    statementid  = "Pizza"
    functionname = "${var.name}"
    sourcearn    = "arn:aws:lex:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:intent:Pizza:*"
    principal    = "lex.amazonaws.com"
  }]

  description = "${var.description}"
  name        = "${var.name}"
  s3_bucket   = "${var.s3_bucket}"
  s3_key      = "${local.s3_key}"
  policyname  = "${var.name}"
  region_name = "${data.aws_region.current.name}"
  role_name   = "${var.name}"
  account_id  = "${data.aws_caller_identity.current.account_id}"
  common_tags = "${var.common_tags}"
  layers      = ["${var.layers}"]
}
