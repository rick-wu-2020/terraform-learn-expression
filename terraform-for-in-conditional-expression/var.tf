provider "aws" {
    region=local.region
}

locals {
 #region=var.element(var.account-area,0)["china-nx"]
 region = var.area["test" != "" ? "china" : "global" ] 
 azs=var.azs
 az={for az in slice(local.azs,0,var.az-count):az => format("%s%s",local.region,az)}
}

resource "aws_ebs_volume" "example" {
   for_each=local.az
   availability_zone=each.value
   size=8
   tags={
   Name= format("terraform-test-%s",each.key)
}
}
