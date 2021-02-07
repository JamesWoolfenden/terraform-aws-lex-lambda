resource "aws_sns_topic" "lambda" {
  count  = var.alarms_enabled == true ? 1 : 0
  policy = data.aws_iam_policy_document.sns.json

  delivery_policy = <<POLICY
{
  "http": {
    "defaultHealthyRetryPolicy": {
      "minDelayTarget": 20,
      "maxDelayTarget": 20,
      "numRetries": 3,
      "numMaxDelayRetries": 0,
      "numNoDelayRetries": 0,
      "numMinDelayRetries": 0,
      "backoffFunction": "linear"
    },
    "disableSubscriptionOverrides": false
  }
}
POLICY

  kms_master_key_id = var.kms_master_key_id

  tags = var.common_tags
}
