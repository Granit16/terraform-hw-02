#variable "vm_web_instance_name" {
#  type          = string
#  default       = "netology-develop-platform-web"
#  description   = "First VPC Name"
#}

variable "vm_web_platform" {
  type          = string
  default       = "standard-v2"
  description   = "Platform ID"
}



#variable "vm_db_instance_name" {
#  type          = string
#  default       = "netology-develop-platform-db"
#  description   = "Second VPC Name"
#}

variable "vm_db_platform" {
  type          = string
  default       = "standard-v2"
  description   = "Platform ID"
}


variable "vms_resources" {
  type = map
  description = "VM's resource params"
}


variable "metadata" {
  type = map
  description = "VM's metadata"
}
