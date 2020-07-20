variable "target" {
  type=list
  default=["nx","bj"]
}

variable "account" {
  type=map
  default={
   nx="china-ningxia",
   bj="china-beijing"
}
}

variable "region"{
  type=map
  default={
    china-ningxia="cn-northwest-1",
    china-beijing="cn-north-1"
}

}


variable "azs" {
  type=list
  default=["a","b","c"]
}
  
