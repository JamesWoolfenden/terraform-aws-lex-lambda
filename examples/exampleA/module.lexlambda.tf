module "lexlambda" {
  source = "github.com/jameswoolfenden/terraform-aws-lex-lambda"

  description      = "${var.description}"
  build_timeout    = "${var.build_timeout}"
  name             = "${var.name}"
  handler          = ""
  filename         = ""
  runtime          = ""
  account_id       = ""
  source_code_hash = ""
  common_tags      = "${var.common_tags}"
}
