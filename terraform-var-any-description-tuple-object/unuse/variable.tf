variable "account-type" {
  type=list
  description="this account belongs to the world or china"
  default=["china","global"]
}

variable "china" {
  type=list
  description="china has two regions,ningxia and beijing"
  default=["beijing","ningxia"]
}

variable "area" {
   type=map
   description="regional display if beijing area"
   default={
      beijing="cn-north-1"
      ningxia="cn-northwest-1"
}
}


