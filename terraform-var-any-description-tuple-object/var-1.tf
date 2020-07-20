provider "aws" {
  region=local.region
}
 locals {
  region="china"!= "" ? "cn-northwest-1" : "cn-north-1" 
}

resource "aws_s3_bucket" "example" {
   bucket="terraform-test-12"
   acl=var.test["test"]["acl"]
   force_destroy=var.test["test"]["force_destroy"]
   tags=var.test["test"]["tags"]["test1"]

}
