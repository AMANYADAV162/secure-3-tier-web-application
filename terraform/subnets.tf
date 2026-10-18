
data "aws_subnets" "project" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.project.id]
  }
}

output "project_subnet_ids" {
  value = data.aws_subnets.project.ids
}
