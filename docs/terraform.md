## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account_id | The Aws account the policy or object should target | string | - | yes |
| common_tags | Tags | map | - | yes |
| description | Of the the Lambda | string | - | yes |
| envvar | Optional set of environmental variables for the lambda | list | `<list>` | no |
| handler | The file the lambda should import | string | `index.handler` | no |
| lambdapermmissions | This takes a list object with values to set permissions of a lambda. Can take multiple permission objects | list | - | yes |
| layers | Optional add in up 5 lambda layers | list | `<list>` | no |
| memory_size | Of the the lambda | string | `128` | no |
| name | Name of Lambda object | string | - | yes |
| policy | This policy will be applied supplant default if given | string | `` | no |
| policyname | Attached to the role of the lambda | string | - | yes |
| prefixdash | Support for renaming on multi-environments | string | `` | no |
| region_name | Aws region name, eu-west-1... | string | - | yes |
| role_name | The name you want your IAM role to have | string | - | yes |
| runtime | Language the code runs in | string | `nodejs8.10` | no |
| s3_bucket | path to the lambda bucket | string | `` | no |
| s3_key | path to the lambda zip | string | `` | no |
| timeout | Of the the lambda | string | `100` | no |
| vpc_config | Optional Vpc attachment config | list | `<list>` | no |
