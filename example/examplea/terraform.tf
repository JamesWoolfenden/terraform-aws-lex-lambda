terraform {
  required_providers {
    aws = {
      version = "3.35.0"
      source  = "hashicorp/aws"
    }
    archive = {
      version = "1.2"
    }

  }
  required_version = ">=0.14.8"
}
