name        = "PizzaOrderProcessor"
description = "Pizza Lambda"
handler     = "index.handler"
versionpath = "//some/path/in/ssm"
layers      = ["arn:aws:lambda:eu-west-1:553700203877:layer:tomato-sauce:1"]
common_tags = {
  modulename = "pizza"
}
