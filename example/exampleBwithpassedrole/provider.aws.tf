provider "aws" {
  region  = "eu-west-1"
  version = "3.00.0"
}

provider "null" {
  version = "2.1"
}

provider "local" {
  version = "1.3"
}

provider "template" {
  version = "2.1"
}

provider "archive" {
  version = "1.2"
}
