output "mongodb_roles" {
  description = "List of MongoDB Access Roles"
  value       = { for item in mongodb_db_role.roles : item.name => item.database }
}

output "mongodb_users" {
  description = "List of MySQL users"
  value       = { for item in mongodb_db_user.users : item.name => item.auth_database }
}
