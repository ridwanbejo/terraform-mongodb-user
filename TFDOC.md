<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_mongodb"></a> [mongodb](#requirement\_mongodb) | 0.1.7 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mongodb"></a> [mongodb](#provider\_mongodb) | 0.1.7 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mongodb_db_role.roles](https://registry.terraform.io/providers/Kaginari/mongodb/0.1.7/docs/resources/db_role) | resource |
| [mongodb_db_user.users](https://registry.terraform.io/providers/Kaginari/mongodb/0.1.7/docs/resources/db_user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | <pre>list(object({<br>    name       = string<br>    role_db    = string<br>    privileges = list(object({<br>      target_db  = string<br>      collection = string<br>      actions    = list(string)<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | n/a | <pre>list(object({<br>    auth_database = string<br>    name          = string<br>    roles = list(object({<br>      name    = string<br>      role_db = string<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mongodb_roles"></a> [mongodb\_roles](#output\_mongodb\_roles) | List of MongoDB Access Roles |
| <a name="output_mongodb_users"></a> [mongodb\_users](#output\_mongodb\_users) | List of MySQL users |
<!-- END_TF_DOCS -->
