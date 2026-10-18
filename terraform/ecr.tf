
data "aws_ecr_repository" "project" {
  name = "secure-3-tier-web-app"
}

output "project_ecr_repository_url" {
  value = data.aws_ecr_repository.project.repository_url
}
