## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account_id | The Aws account the policy or object should target | string | - | yes |
| common_tags | Tags | map | - | yes |
| description | Of the the Lambda | string | - | yes |
| envvar | Optional set of environmental variables for the lambda | map | `<map>` | no |
| filename | Filename attached to the uploading code | string | - | yes |
| handler | The file the lambda should import | string | - | yes |
| lambdapermmisions | This takes a list object with values to set permissions of a lambda. Can take multiple permission objects | list | - | yes |
| memory_size | Of the the lambda | string | `128` | no |
| name | Name of Lambda object | string | - | yes |
| policy | This policy will be applied supplant default if given | string | `` | no |
| policyname | Attached to the role of the lambda | string | - | yes |
| region_name | Aws region name, eu-west-1... | string | - | yes |
| role_name | The name you want your IAM role to have | string | - | yes |
| runtime | Language the code runs in | string | - | yes |
| source_code_hash | Had of the Lambda source code | string | - | yes |
| timeout | Of the the lambda | string | `100` | no |
| vpc_config | Optional Vpc attachment config | list | `<list>` | no |
