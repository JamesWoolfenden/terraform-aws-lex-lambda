data "aws_iam_policy_document" "lambda" {

  statement {
    actions = [
      "lambda:InvokeFunction"
    ]

    resources = ["*"]
  }

  statement {
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = ["arn:aws:logs:*:*:*"]
  }

  statement {
    actions = [
      "ssm:getParameter",
      "ssm:getParameters"
    ]
    resources = ["*"]
  }

  statement {
    actions = [
      "ec2:CreateNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface"
    ]
    resources = ["*"]
  }

  statement {
    actions = [
      "lex:GetIntent",
      "lex:PostText"
    ]
    resources = ["*"]
  }
}
