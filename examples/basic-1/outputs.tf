output "mongodb_roles" {
  description = "Current MongoDB roles"
  value       = module.tf_mongodb_user.mongodb_roles
}

output "mongodb_users" {
  description = "Current MongoDB users"
  value       = module.tf_mongodb_user.mongodb_users
}
