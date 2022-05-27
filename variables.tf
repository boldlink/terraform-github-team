variable "name" {
  type        = string
  description = "(Required) The name of the team."
}

variable "description" {
  type        = string
  description = "(Optional) A description of the team."
  default     = null
}

variable "privacy" {
  type        = string
  description = "(Optional) The level of privacy for the team. Must be one of `secret` or `closed`. Defaults to `secret`."
  default     = "secret"
}

variable "parent_team_id" {
  type        = string
  description = "(Optional) The ID of the parent team, if this is a nested team."
  default     = null
}

variable "ldap_dn" {
  type        = string
  description = "(Optional) The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise Server."
  default     = null
}

variable "create_default_maintainer" {
  type        = bool
  description = "(Optional) Adds a default maintainer to the team. Defaults to `false` and adds the creating user to the team when `true`."
  default     = false
}

variable "maintainers" {
  type        = list(string)
  description = "The list of the maintainers of the team"
  default     = []
}

variable "members" {
  type        = list(string)
  description = "The list of the members of the team"
  default     = []
}
