resource "aws_iam_role" "withintent" {
  name = "${format("%.64s", var.role_name)}"

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

  lifecycle {
    ignore_changes = [
      "tags",
    ]
  }
}
