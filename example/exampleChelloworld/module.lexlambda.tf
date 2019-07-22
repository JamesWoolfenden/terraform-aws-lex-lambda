module "lexlambda" {
  source = "../../"

  lambdapermmissions = [{
    statementid  = "helloworld"
    functionname = var.name
    source_arn   = "intent:helloworld:*"
  }]

  description = var.description
  name        = var.name
  s3_bucket   = var.s3_bucket
  s3_key      = local.s3_key
  policyname  = var.name
  role_name   = var.role_name
  common_tags = var.common_tags
  passedrole  = true
}
