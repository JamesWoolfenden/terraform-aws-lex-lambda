locals {
  s3_key = "${replace(var.name, ".", "-")}/${var.name}-${var.package_version == "" ? data.aws_ssm_parameter.version.value : var.package_version}.zip"
}
