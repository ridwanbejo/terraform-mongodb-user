variable "mongodb_roles" {
  type    = list(any)
  default = []
}

variable "mongodb_users" {
  type    = list(any)
  default = []
}

variable "mongodb_username" {
  type = string
}

variable "mongodb_password" {
  type = string
}
