module "lexlambda" {
  source        = "github.com/jameswoolfenden/terraform-aws-lex-lambda"
  projectroot   = "${var.projectroot}"
  description   = "${var.description}"
  build_timeout = "${var.build_timeout}"
  name          = "${var.name}"

  common_tags = "${var.common_tags}"
}
