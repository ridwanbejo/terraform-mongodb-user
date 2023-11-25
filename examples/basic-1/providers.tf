terraform {
  required_version = ">= 1.4"

  required_providers {
    mongodb = {
      source  = "Kaginari/mongodb"
      version = "0.1.7"
    }
  }
}

provider "mongodb" {
  host          = "127.0.0.1"
  port          = "27017"
  auth_database = "admin"
  username      = local.username
  password      = local.password
}
