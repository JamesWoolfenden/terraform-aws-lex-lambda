[![Slalom][logo]](https://slalom.com)

# terraform-aws-lex-lambda

terraform-aws-lex-lambda [![Build Status](https://api.travis-ci.com/JamesWoolfenden/terraform-aws-lex-lambda.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-lex-lambda) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-lex-lambda.svg)](https://github.com/JamesWoolfenden/terraform-aws-lex-lambda/releases/latest)

The terraform module creates lambda with permissions, for my purposes a lex lambda combination bit options for IAM and CLoudwatch.
To use a lambda with an intent a number of other objects are either required. In this module I have included a number of reasonable default values.
This should make it easier to build the lambdas that go with your lex objects.
The lamda permission is a array/list this means you can add as many permissions to lambda as you need to.

How to use this project:

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a minimal example **ExampleA**, but with Cloudwatch alarms enabled.

```terraform
module lexlambda {
  source = "github.com/jameswoolfenden/terraform-aws-lex-lambda"
  version= "0.3.40"

  lambdapermmissions = [{
    intent     = "Pizza"
    source_arn = "Pizza:*"
  }]

  account_id     = data.aws_caller_identity.current.account_id
  alarms_enabled = true
  common_tags    = var.common_tags
  description    = "Best Pizza!!"
  filename       = "${path.module}/lambda.zip"
  name           = var.name
  region_name    = data.aws_region.current.name
  role_arn       = data.aws_iam_role.lambda.arn
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_id | The Aws account the policy or object should target | string | n/a | yes |
| description | Of the the Lambda | string | n/a | yes |
| handler | The file the lambda should import | string | `"index.handler"` | no |
| lambdapermmissions | This takes a list object with values to set permissions of a lambda. Can take multiple permission objects | list | `[]` | no |
| name | Name of Lambda object | string | n/a | yes |
| region\_name | Aws region name, eu-west-1... | string | n/a | yes |
| role\_arn | The name you want your IAM role to have | string | n/a | yes |
| timeout | Of the the lambda | string | `"100"` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_arn |  |
| memory\_size |  |
| source\_code\_size |  |
| timeout |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codecommit](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Storing ones code

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-lex-lambda/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-lex-lambda/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2019 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

|  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-lex-lambda&url=https://github.com/JamesWoolfenden/terraform-aws-lex-lambda
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-lex-lambda&url=https://github.com/JamesWoolfenden/terraform-aws-lex-lambda
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-lex-lambda
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-lex-lambda
[share_email]: mailto:?subject=terraform-aws-lex-lambda&body=https://github.com/JamesWoolfenden/terraform-aws-lex-lambda
