variable "area" {
  type=string
  default="cn-northwest-1"
  validation {
   condition=can(regex("cn-north-1|cn-northwest-1",var.area))
   error_message="ERROR: region must be beijing or ningxia ."
}
}

variable "azs" {
  type=list
  default=["a","b","c","d","e","f"]
}

variable "az-count" {
  type=number
  default =3
  validation{
   condition=var.az-count>2
   error_message="ERROR: this zone must be greater than 2 ."
}
}
