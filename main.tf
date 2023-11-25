resource "random_password" "password" {
  for_each = { for idx, item in var.users : item.name => item }

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "mongodb_db_role" "roles" {
  for_each = { for idx, item in var.roles : item.name => item }

  name     = each.value.name
  database = each.value.role_db

  dynamic "privilege" {
    for_each = each.value.privileges
    content {
      db         = privilege.value["target_db"]
      collection = privilege.value["collection"]
      actions    = privilege.value["actions"]
    }
  }
}

resource "mongodb_db_user" "users" {
  for_each = { for idx, item in var.users : item.name => item }

  auth_database = each.value.auth_database
  name          = each.value.name
  password      = random_password.password[each.value.name].result

  dynamic "role" {
    for_each = each.value.roles
    content {
      role = can(mongodb_db_role.roles[role.value["name"]]) ? mongodb_db_role.roles[role.value["name"]].name : role.value["name"]
      db   = role.value["role_db"]
    }
  }

  depends_on = [mongodb_db_role.roles]
}
