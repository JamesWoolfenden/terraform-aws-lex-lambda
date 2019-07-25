resource "aws_lambda_permission" "withintent" {
  count         = length(var.lambdapermmissions)
  statement_id  = "lex-${var.region_name}-${var.prefixdash}${lookup(var.lambdapermmissions[count.index], "intent")}"
  action        = var.action
  function_name = var.name
  principal     = var.principal
  source_arn    = "arn:aws:lex:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${lookup(var.lambdapermmissions[count.index], "source_arn")}"

  depends_on = ["aws_lambda_function.withintent"]
}
