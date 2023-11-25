terraform {
  required_version = ">= 1.4"

  required_providers {
    mongodb = {
      source  = "Kaginari/mongodb"
      version = "0.1.7"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
