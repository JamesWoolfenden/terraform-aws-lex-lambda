locals {
  s3_key = "${replace(var.name, ".", "-")}/${var.name}-${var.package_version}.zip"
}
