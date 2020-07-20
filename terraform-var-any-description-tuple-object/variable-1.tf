variable "test" {
   type=map(object({
     acl=string,
     force_destroy=bool,
     tags=map(object({
     Name=string
}))
}))
default={
  test={
   acl="private",
   force_destroy= true,
   tags={
	   test1= {
   Name="terrafir--est"
}
}
}
}
}
