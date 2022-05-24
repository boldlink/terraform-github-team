module "team_closed" {
  source      = "./../../"
  name        = "example-team-closed"
  description = "Example closed team"
  privacy     = "closed"
  maintainers = ["SomeUser"]
  members     = ["AnotherUser"]
}

module "team_secret" {
  source      = "./../../"
  name        = "example-team-secret"
  description = "Example secret team"
  maintainers = ["SomeUser"]
}
