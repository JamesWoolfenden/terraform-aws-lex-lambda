module "lexlambda" {
  source = "../../"

  lambdapermmissions = [{
    statementid  = "Pizza"
    functionname = "${var.name}"
    source_arn    = "intent:Pizza:*"
  }]

  description = var.description
  name        = var.name
  s3_bucket   = var.s3_bucket
  s3_key      = local.s3_key
  policyname  = var.name
  role_name   = var.name
  common_tags = var.common_tags
  layers      = [var.layers]
}
