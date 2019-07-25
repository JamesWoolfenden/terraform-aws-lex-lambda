data "aws_ssm_parameter" "package_version" {
  name = var.versionpath
}
