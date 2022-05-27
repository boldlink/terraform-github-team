
output "team_id" {
  value       = github_team.main.id
  description = "The ID of the created team."
}

output "team_node_id" {
  value       = github_team.main.node_id
  description = "The Node ID of the created team."
}

output "team_slug" {
  value       = github_team.main.slug
  description = "The slug of the created team, which may or may not differ from name, depending on whether name contains \"URL-unsafe\" characters. Useful when referencing the team in github_branch_protection."
}
