data "aws_availability_zones" "azs" {
  state = "available"
}
data "aws_vpc" "manage_vpc" {
  id = var.manage_vpc
}
/*
data "aws_route_tables" "rt" {
  vpc_id = var.manage_vpc
}*/
