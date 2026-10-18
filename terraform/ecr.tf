
# Existing ECR repository
data "aws_ecr_repository" "project" {
  name = "secure-3-tier-web-app"
}

output "project_ecr_repository_url" {
  value = data.aws_ecr_repository.project.repository_url
}

# Existing ECS cluster
data "aws_ecs_cluster" "project" {
  cluster_name = "default"
}

# Existing ECS service
data "aws_ecs_service" "project" {
  cluster_arn  = data.aws_ecs_cluster.project.arn
  service_name = "secure-3-tier-web-app-cb5c"
}

output "project_ecs_cluster_arn" {
  value = data.aws_ecs_cluster.project.arn
}

output "project_ecs_service_status" {
  value = data.aws_ecs_service.project.status
}

output "project_ecs_desired_count" {
  value = data.aws_ecs_service.project.desired_count
}
