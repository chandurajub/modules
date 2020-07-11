module "vpc" {
  source = "https://github.com/chandurajub/modules.git//vpc"
  cidr = var.cidr
  tags = var.tags
  manage_vpc= var.manage_vpc
}