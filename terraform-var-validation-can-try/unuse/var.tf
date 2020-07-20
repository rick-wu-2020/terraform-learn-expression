provider "aws" {
 region = local.region
}

locals {
 region=var.area
}

resource "aws_s3_bucket" "example" {
 bucket = "test-terrform-ssl"
 acl="private"
 force_destroy = true
}

terraform {
  experiments = [variable_validation]
}
