variable "lambdapermmissions" {
  type        = list(any)
  description = "This takes a list object with values to set permissions of a lambda. Can take multiple permission objects"
  default     = []
}

variable "name" {
  type        = string
  description = "Name of Lambda object"
}

variable "region_name" {
  type        = string
  description = "Aws region name, eu-west-1..."
}

variable "role_arn" {
  type        = string
  description = "The name you want your IAM role to have"
}

variable "account_id" {
  type        = string
  description = "The Aws account the policy or object should target"
}

variable "handler" {
  type        = string
  description = "The file the lambda should import"
  default     = "index.handler"
}

variable "description" {
  type        = string
  description = "Of the the Lambda"
}

variable "timeout" {
  type        = string
  description = "Of the the lambda"
  default     = "100"
}

variable "memory_size" {
  type        = string
  description = "Of the the lambda"
  default     = "128"
}

variable "envvar" {
  type        = map(any)
  default     = { "Terraform" = "Bug" }
  description = "Optional set of environmental variables for the lambda"
}

variable "vpc_config" {
  type        = map(any)
  default     = {}
  description = "Optional Vpc attachment config"
}

variable "runtime" {
  type        = string
  description = "Language the code runs in"
  default     = "nodejs8.10"
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common tags scheme"
}

variable "prefixdash" {
  default     = ""
  type        = string
  description = "Support for renaming on multi-environments"
}

variable "layers" {
  type        = list(any)
  description = "Optionally, add in up 5 lambda layers"
  default     = []
}

variable "s3_key" {
  description = "path to the lambda zip"
  type        = string
  default     = null
}

variable "s3_bucket" {
  description = "path to the lambda bucket"
  type        = string
  default     = null
}

variable "principal" {
  type    = string
  default = "lex.amazonaws.com"
}

variable "action" {
  description = "Action for the Lambda permission"
  type        = string
  default     = "lambda:InvokeFunction"
}

variable "security_group_ids" {
  description = "The IDs of some security groups"
  type        = list(string)
  default     = []
}

variable "subnet_ids" {
  description = "Subnet IDs..."
  type        = list(string)
  default     = []
}

variable "filename" {
  type        = string
  description = "name of zip file if any"
  default     = null
}

variable "alarms_enabled" {
  type        = bool
  description = "Cloudwatch alarms enabled"
  default     = false
}

variable "metric_comparison_operator" {
  description = "For Cloudwatch Alarms"
  type        = string
  default     = "GreaterThanThreshold"
}

variable "metric_datapoints_to_alarm" {
  description = "For Cloudwatch Alarms"
  type        = number
  default     = 1
}

variable "metric_evaluation_periods" {
  description = "For Cloudwatch Alarms"
  type        = number
  default     = 1
}

variable "metric_metric_name" {
  type    = string
  default = "Invocations"
}

variable "metric_period" {
  type    = number
  default = 300
}

variable "metric_statistic" {
  type    = string
  default = "Average"
}

variable "metric_threshold" {
  type    = number
  default = 100
}

variable "kms_master_key_id" {
  type        = string
  description = "Add value, either CMK or alias/aws/sns to enable encryption of SNS, Cloudwatch"
}

variable "tracing_config" {
  type        = string
  description = "Sets the x-ray tracing mode"
  default     = "Active"
}
