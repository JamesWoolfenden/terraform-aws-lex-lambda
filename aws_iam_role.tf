resource "aws_iam_role" "withintent" {
  count = "${var.passedrole == "" ? 1: 0}"
  name  = "${var.role_name}"

  assume_role_policy = <<HERE
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
HERE

  tags = "${var.common_tags}"
}
