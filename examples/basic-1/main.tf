module "tf_mongodb_user" {
  source    = "../.."
  roles = local.roles
  users = local.users
}
