module "lexlambda" {
  source = "../../"

  lambdapermmissions = [{
    intent     = "Pizza"
    source_arn = "Pizza:*"
  }]

  account_id  = data.aws_caller_identity.current.account_id
  common_tags = var.common_tags
  description = "Best Pizza!!"
  name        = var.name
  region_name = data.aws_region.current.name
  role_arn    = data.aws_iam_role.lambda.arn
  filename    = "${path.module}/lambda.zip"
}
