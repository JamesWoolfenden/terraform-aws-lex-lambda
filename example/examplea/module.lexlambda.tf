module "lexlambda" {
  source = "../../"
  lambdapermmissions = [{
    intent     = "Pizza"
    source_arn = "Pizza:*"
  }]

  account_id        = data.aws_caller_identity.current.account_id
  alarms_enabled    = true
  common_tags       = var.common_tags
  description       = "Best Pizza!!"
  filename          = "${path.module}/lambda.zip"
  name              = var.name
  region_name       = data.aws_region.current.name
  role_arn          = data.aws_iam_role.lambda.arn
  kms_master_key_id = aws_kms_key.forlambda.id
  kms_key_id        = aws_kms_key.forlambda.id
}
resource "aws_kms_key" "forlambda" {
  enable_key_rotation = true
}
