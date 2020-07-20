provider "aws" {
  region = local.region
}

locals {
  region="cn-northwest-1"
}

resource "aws_s3_bucket" "example" {
   count=3
   bucket="var.value[count.index].bucket-${random_id.example.*.dec[count.index]}"
   acl=var.value[count.index].acl
   force_destroy=var.value[count.index].force_destroy
}
resource "random_id" "example" {
    byte_length=2
    count=3
}
