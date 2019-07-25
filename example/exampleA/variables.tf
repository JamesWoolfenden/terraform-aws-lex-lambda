
variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "s3_bucket" {
  type = string
}

variable "name" {
  type = string
}

variable "package_version" {
  type    = string
  default = "1"
}
