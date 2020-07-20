provider "aws" {
    region=local.region
}

locals{
  region=element([for region in ["cn-north-1","cn-northwest-1"]:region if length(region)<=10],0)
  s3_name=[for name in ["teSt-1","teSt-1-2","Test2-1-2-3"]:lower(name) if length(name)>6]
  }

 resource "aws_s3_bucket" "example" {
   for_each=toset(local.s3_name)
   bucket=format("terraform-%s",each.value)
   force_destroy=true
   acl="private"
}
