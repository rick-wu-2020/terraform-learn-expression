variable "value" {
 type=list(object({
       bucket=string,
       force_destroy=bool,
       acl=string
}))
default=[
  {
  bucket="test1",
  force_destroy=true,
  acl= "private"
},
  {
  bucket="test2",
  force_destroy=true,
  acl= "private"
} ,
 {
  bucket="test3",
  force_destroy=true,
  acl= "private"
}
]
}
