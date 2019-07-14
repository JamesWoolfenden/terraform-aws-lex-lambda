resource "aws_iam_role_policy_attachment" "withintent" {
  role       = aws_iam_role.withintent.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
