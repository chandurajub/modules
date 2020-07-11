module "vpc" {
  source = "../vpc"
  cidr = var.cidr
  tags = var.tags
  manage_vpc= var.manage_vpc
}