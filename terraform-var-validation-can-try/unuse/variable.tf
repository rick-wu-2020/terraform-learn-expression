variable "area" {
  type = string  
 default="cn-northwest-1"
  validation{
  condition=can(regex("cn-north-1|cn-northwest-1",var.area))
  error_message="ERROR:region must be ningxia or beijing ."
}
}
