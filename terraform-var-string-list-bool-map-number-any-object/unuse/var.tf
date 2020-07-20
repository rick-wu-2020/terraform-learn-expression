provider "aws" {
    region=local.region
}

locals {
  region =lookup(var.region,lookup(var.account,var.target[0]))
  az={for az in slice(var.azs,0,3):az => format("%s%s",local.region,az)} 
}

resource "aws_ebs_volume" "example" {
     for_each=local.az
     availability_zone=each.value
     size=8
}
