resource "aws_iam_role_policy_attachment" "withintent" {
  count      = "${var.passedrole == "" ? 1: 0}"
  role       = "${aws_iam_role.withintent.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
