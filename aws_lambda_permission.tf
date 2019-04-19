resource "aws_lambda_permission" "withintent" {
  count         = "${length(var.lambdapermmissions)}"
  statement_id  = "lex-${var.region_name}-${var.prefixdash}${lookup(var.lambdapermmissions[count.index], "intent")}"
  action        = "lambda:InvokeFunction"
  function_name = "${var.name}"
  principal     = "lex.amazonaws.com"
  source_arn    = "${lookup(var.lambdapermmissions[count.index], "sourcearn")}"
}
