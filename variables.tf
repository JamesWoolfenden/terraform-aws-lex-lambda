variable "lambdapermmissions" {
  type        = "list"
  description = "This takes a list object with values to set permissions of a lambda. Can take multiple permission objects"
}

variable "name" {
  type        = "string"
  description = "Name of Lambda object"
}

variable "region_name" {
  type        = "string"
  description = "Aws region name, eu-west-1..."
}

variable "role_name" {
  type        = "string"
  description = "The name you want your IAM role to have"
}

variable "account_id" {
  type        = "string"
  description = "The Aws account the policy or object should target"
}

variable "handler" {
  type        = "string"
  description = "The file the lambda should import"
  default     = "index.handler"
}

variable "description" {
  type        = "string"
  description = "Of the the Lambda"
}

variable "timeout" {
  type        = "string"
  description = "Of the the lambda"
  default     = "100"
}

variable "memory_size" {
  type        = "string"
  description = "Of the the lambda"
  default     = "128"
}

variable "policyname" {
  type        = "string"
  description = "Attached to the role of the lambda"
}

variable "envvar" {
  type        = "list"
  default     = []
  description = "Optional set of environmental variables for the lambda"
}

variable "vpc_config" {
  type        = "list"
  default     = []
  description = "Optional Vpc attachment config"
}

variable "policy" {
  type        = "string"
  default     = ""
  description = "This policy will be applied supplant default if given"
}

variable "runtime" {
  type        = "string"
  description = "Language the code runs in"
  default     = "nodejs8.10"
}

variable "common_tags" {
  type        = "map"
  description = "Tags"
}

variable "prefixdash" {
  default     = ""
  type        = "string"
  description = "Support for renaming on multi-environments"
}

variable "layers" {
  type        = "list"
  description = "Optional add in up 5 lambda layers"
  default     = []
}

variable "s3_key" {
  description = "path to the lambda zip"
  default     = ""
}

variable "s3_bucket" {
  description = "path to the lambda bucket"
  default     = ""
}
