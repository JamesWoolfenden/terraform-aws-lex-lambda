variable "lambdapermmisions" {
  type = "list"
}

variable "name" {
  type = "string"
}

variable "region_name" {
  type = "string"
}

variable "role_name" {
  type = "string"
}

variable "account_id" {
  type = "string"
}

variable "handler" {
  type = "string"
}

variable "source_code_hash" {
  type = "string"
}

variable "description" {
  type = "string"
}

variable "timeout" {
  type = "string"
}

variable "memory_size" {
  type = "string"
}

variable "policyname" {
  type = "string"
}

variable "envvar" {
  type    = "map"
  default = {}
}

variable "vpc_config" {
  type    = "list"
  default = []
}

variable "policy" {
  type        = "string"
  default     = ""
  description = "This policy will be applied supplant default if given"
}

variable "filename" {
  type = "string"
}

variable "runtime" {
  type = "string"
}

variable "common_tags" {
  type = "map"
}
