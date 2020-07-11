/*data "aws_vpc" "vpc" {
  id = "${local.vpc_id}"
}
data "aws_vpc" "manage_vpc" {
  id = local.manage_vpc
}*/

data "aws_vpc" "vpc" {
  id = "${var.vpc_id}"
}
data "aws_vpc" "manage_vpc" {
  id = var.manage_vpc
}
