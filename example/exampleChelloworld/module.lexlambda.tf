module "lexlambda" {
  source = "../../"

  lambdapermmissions = [{
    statementid  = "helloworld"
    functionname = var.name
    sourcearn    = "arn:aws:lex:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:intent:helloworld:*"
    principal    = "lex.amazonaws.com"
  }]

  account_id  = data.aws_caller_identity.current.account_id
  common_tags = var.common_tags
  description = var.description
  name        = var.name
  passedrole  = true
  policyname  = var.name
  region_name = data.aws_region.current.name
  role_name   = var.name
  s3_bucket   = var.s3_bucket
  s3_key      = local.s3_key
}
