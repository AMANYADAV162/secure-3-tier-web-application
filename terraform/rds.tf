
data "aws_db_instance" "project" {
  db_instance_identifier = "secure-3-tier-db"
}

output "project_rds_identifier" {
  value = data.aws_db_instance.project.db_instance_identifier
}

output "project_rds_engine" {
  value = data.aws_db_instance.project.engine
}

output "project_rds_endpoint" {
  value = data.aws_db_instance.project.endpoint
}
