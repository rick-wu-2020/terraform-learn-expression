
variable "area"{
   type=map
   default={
   china="cn-northwest-1",
   global="us-east-1"
}
}


variable "az-count"{
  type=number
  default=3
}

variable "azs"{
   type=list
   default=["a","b","c","d","e","f"]
}


