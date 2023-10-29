module "team_closed" {
  source      = "./../../"
  name        = "${var.name}-closed"
  description = "Example closed team"
  privacy     = "closed"
  maintainers = ["SomeUser"]
  members     = ["AnotherUser"]
}

module "team_secret" {
  source      = "./../../"
  name        = "${var.name}-secret"
  description = "Example secret team"
  maintainers = ["SomeUser"]
}


## Nested team
module "parent_team" {
  source      = "./../../"
  name        = "${var.name}-parent"
  description = "Example parent team"
  create_default_maintainer = true
  privacy     = "closed"
}

module "child_team" {
  source      = "./../../"
  name        = "${var.name}-child"
  description = "Example child team"
  create_default_maintainer = true
  parent_team_id = module.parent_team.team_id
  privacy     = "closed"
}