variable "roles" {
  type = list(object({
    name       = string
    role_db    = string
    privileges = list(object({
      target_db  = string
      collection = string
      actions    = list(string)
    }))
  }))
}

variable "users" {
  type = list(object({
    auth_database = string
    name          = string
    roles = list(object({
      name    = string
      role_db = string
    }))
  }))
}
