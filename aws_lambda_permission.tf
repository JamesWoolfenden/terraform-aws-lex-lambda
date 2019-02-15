resource "aws_lambda_permission" "withintent" {
  count         = "${length(var.lambdapermmisions)}"
  statement_id  = "${lookup(var.lambdapermmisions[count.index], "statementid")}"
  action        = "${lookup(var.lambdapermmisions[count.index], "action")}"
  function_name = "${var.name}"
  principal     = "${lookup(var.lambdapermmisions[count.index], "principal")}"
  source_arn    = "${lookup(var.lambdapermmisions[count.index], "sourcearn")}"
}
