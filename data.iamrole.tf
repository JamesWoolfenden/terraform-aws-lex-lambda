data "aws_iam_role" "passedrole" {
  count = "${var.passedrole == "" ? 0: 1}"
  name  = "${var.role_name}"
}
