
data "aws_vpc" "project" {
  id = "vpc-0287b08d5cf7bc99d"
}

output "project_vpc_id" {
  value = data.aws_vpc.project.id
}

output "project_vpc_cidr" {
  value = data.aws_vpc.project.cidr_block
}
