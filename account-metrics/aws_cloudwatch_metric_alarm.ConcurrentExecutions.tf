resource "aws_cloudwatch_metric_alarm" "ConcurrentExecutions" {
  count                     = var.alarms_enabled == true ? 1 : 0
  alarm_actions             = [aws_sns_topic.lambda.0.arn]
  alarm_name                = "${var.name}-ConcurrentExecutions"
  comparison_operator       = var.metric_comparison_operator
  dimensions                = {}
  datapoints_to_alarm       = var.metric_datapoints_to_alarm
  evaluation_periods        = var.metric_evaluation_periods
  insufficient_data_actions = []
  metric_name               = "ConcurrentExecutions"
  ok_actions                = []
  namespace                 = "AWS/Lambda"
  period                    = var.metric_period
  statistic                 = var.metric_statistic
  tags                      = var.common_tags
  threshold                 = var.metric_threshold
}

variable "metric_threshold" {
  description = "Threshold for a metric Alarm"
  type        = number
  default     = 10000
}

variable "metric_comparison_operator" {
  default = "GreaterThanThreshold"
  type    = string

}

variable "metric_datapoints_to_alarm" {
  type    = number
  default = 1
}

variable "metric_statistic" {
  type    = string
  default = "Average"
}

variable "metric_evaluation_periods" {
  type    = number
  default = 1
}

variable "metric_period" {
  type    = number
  default = 300

}
