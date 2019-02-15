resource "aws_iam_role_policy" "withintent" {
  name   = "${var.policyname}"
  role   = "${aws_iam_role.withintent.id}"
  policy = "${var.policy == "" ? data.aws_iam_policy_document.withintent.json : var.policy}"
}

data "aws_iam_policy_document" "withintent" {
  statement {
    actions = ["ec2:CreateNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface",
    ]

    resources = ["*"]
  }

  statement {
    actions = ["ssm:getParameter",
      "ssm:getParameters",
    ]

    resources = ["arn:aws:ssm:${var.region_name}:${var.account_id}:parameter/*"]
  }

  statement {
    actions   = ["lex:GetIntent"]
    resources = ["*"]
  }
}
