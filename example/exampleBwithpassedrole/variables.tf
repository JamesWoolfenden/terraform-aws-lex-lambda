variable "common_tags" {
  type = map(any)
}
variable "description" {
  type = string
}
variable "name" {
  type = string
}
variable "versionpath" {
  type = string
}
variable "s3_bucket" {
  type = string
}
variable "package_version" {
  type    = string
  default = ""
}
