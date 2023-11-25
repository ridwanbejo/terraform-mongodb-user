<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_mongodb"></a> [mongodb](#requirement\_mongodb) | 0.1.7 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_mongodb_user"></a> [tf\_mongodb\_user](#module\_tf\_mongodb\_user) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mongodb_password"></a> [mongodb\_password](#input\_mongodb\_password) | n/a | `string` | n/a | yes |
| <a name="input_mongodb_roles"></a> [mongodb\_roles](#input\_mongodb\_roles) | n/a | `list(any)` | `[]` | no |
| <a name="input_mongodb_username"></a> [mongodb\_username](#input\_mongodb\_username) | n/a | `string` | n/a | yes |
| <a name="input_mongodb_users"></a> [mongodb\_users](#input\_mongodb\_users) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mongodb_roles"></a> [mongodb\_roles](#output\_mongodb\_roles) | Current MongoDB roles |
| <a name="output_mongodb_users"></a> [mongodb\_users](#output\_mongodb\_users) | Current MongoDB users |
<!-- END_TF_DOCS -->