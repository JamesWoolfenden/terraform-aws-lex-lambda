resource "aws_cloudwatch_metric_alarm" "invocations" {
  count                     = var.alarms_enabled == true ? 1 : 0
  insufficient_data_actions = []
  actions_enabled           = true
  alarm_actions             = [aws_sns_topic.lambda.0.arn]
  alarm_description         = "Lambda Invocations alarm for ${var.name}"
  alarm_name                = "${var.name}-invocations"
  comparison_operator       = "GreaterThanThreshold"
  datapoints_to_alarm       = var.metric_datapoints_to_alarm
  evaluation_periods        = var.metric_evaluation_periods
  metric_name               = "Invocations"
  namespace                 = "AWS/Lambda"
  period                    = var.metric_period
  statistic                 = "Average"
  threshold                 = var.metric_threshold
  dimensions = {
    "FunctionName" = var.name
  }
}

variable "metric_comparison_operator" {
  default = "GreaterThanThreshold"
}

variable "metric_datapoints_to_alarm" {
  type    = number
  default = 1
}

variable "metric_evaluation_periods" {
  type    = number
  default = 1
}

variable "metric_metric_name" {
  default = "Invocations"
}

variable "metric_period" {
  default = 300
}

variable "metric_statistic" {
  default = "Average"
}

variable "metric_threshold" {
  type = number

  default = 100
}
