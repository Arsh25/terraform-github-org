module "java" {
  source        = "modules/repository"
  name          = "java"
  cookbook_team = "${github_team.java.id}"
}

resource "github_team" "java" {
  name        = "java"
  description = "Java Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "java-maintainer-1" {
  team_id  = "${github_team.java.id}"
  username = "tas50"
  role     = "maintainer"
}
