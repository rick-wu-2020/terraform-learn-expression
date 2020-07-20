provider "aws" {
  region=local.region
}

locals {
region=var.area[var.account-type[0] != "global" ? var.china[1] : var.china[0]]
#region="cn-northwest-1"
 azs=["a","b","c"]
 availability_zones={for az in slice(local.azs,0,3):az => format("%s%s",local.region,az)}
}

resource "aws_ebs_volume" "example" {
    for_each = local.availability_zones
    availability_zone=each.value
    size =8
    tags={
    Name=format("terraform-%s",each.key)
}
}
