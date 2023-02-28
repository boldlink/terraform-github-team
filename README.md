[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-github-team/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-github-team.svg)](https://github.com/boldlink/terraform-github-team/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)
[![Build Status](https://github.com/boldlink/terraform-github-team/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-github-team/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform  Github Team module

## Description

Terraform module for creating Github teams.

Examples available [`here`](github.com/boldlink/terraform-github-team//tree/main/examples)

## Usage
*NOTE*: These examples use the latest version of this module

```console
module "team_closed" {
    source = "./../../"
    name = "example-team-minimum"
    description = "Example closed team"
}
```
## Documentation

[Github Documentation](https://docs.github.com/en/organizations/organizing-members-into-teams/creating-a-team)

[Terraform module documentation](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.24.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.maintainer](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.member](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_default_maintainer"></a> [create\_default\_maintainer](#input\_create\_default\_maintainer) | (Optional) Adds a default maintainer to the team. Defaults to `false` and adds the creating user to the team when `true`. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description of the team. | `string` | `null` | no |
| <a name="input_ldap_dn"></a> [ldap\_dn](#input\_ldap\_dn) | (Optional) The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise Server. | `string` | `null` | no |
| <a name="input_maintainers"></a> [maintainers](#input\_maintainers) | The list of the maintainers of the team | `list(string)` | `[]` | no |
| <a name="input_members"></a> [members](#input\_members) | The list of the members of the team | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the team. | `string` | n/a | yes |
| <a name="input_parent_team_id"></a> [parent\_team\_id](#input\_parent\_team\_id) | (Optional) The ID of the parent team, if this is a nested team. | `string` | `null` | no |
| <a name="input_privacy"></a> [privacy](#input\_privacy) | (Optional) The level of privacy for the team. Must be one of `secret` or `closed`. Defaults to `secret`. | `string` | `"secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_team_id"></a> [team\_id](#output\_team\_id) | The ID of the created team. |
| <a name="output_team_node_id"></a> [team\_node\_id](#output\_team\_node\_id) | The Node ID of the created team. |
| <a name="output_team_slug"></a> [team\_slug](#output\_team\_slug) | The slug of the created team, which may or may not differ from name, depending on whether name contains "URL-unsafe" characters. Useful when referencing the team in github\_branch\_protection. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Third party software
This repository uses third party software:
* [pre-commit](https://pre-commit.com/) - Used to help ensure code and documentation consistency
  * Install with `brew install pre-commit`
  * Manually use with `pre-commit run`
* [terraform 0.14.11](https://releases.hashicorp.com/terraform/0.14.11/) For backwards compatibility we are using version 0.14.11 for testing making this the min version tested and without issues with terraform-docs.
* [terraform-docs](https://github.com/segmentio/terraform-docs) - Used to generate the [Inputs](#Inputs) and [Outputs](#Outputs) sections
  * Install with `brew install terraform-docs`
  * Manually use via pre-commit
* [tflint](https://github.com/terraform-linters/tflint) - Used to lint the Terraform code
  * Install with `brew install tflint`
  * Manually use via pre-commit

### Makefile
The makefile contain in this repo is optimized for linux paths and the main purpose is to execute testing for now.
* Create all tests:
`$ make tests`
* Clean all tests:
`$ make clean`

#### BOLDLink-SIG 2022
