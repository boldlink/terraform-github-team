resource "github_team" "main" {
  name                      = var.name
  description               = var.description
  privacy                   = var.privacy
  parent_team_id            = var.parent_team_id
  ldap_dn                   = var.ldap_dn
  create_default_maintainer = var.create_default_maintainer
}

resource "github_team_membership" "maintainer" {
  count    = var.maintainers == [] ? 0 : length(var.maintainers)
  team_id  = github_team.main.id
  username = element(var.maintainers, count.index)
  role     = "maintainer"
}

resource "github_team_membership" "member" {
  count    = var.members == [] ? 0 : length(var.members)
  team_id  = github_team.main.id
  username = element(var.members, count.index)
  #role     = "member"
}
