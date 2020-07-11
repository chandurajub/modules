output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_sub" {
  value = module.vpc.public_sub

}
output "private_sub" {
  value = module.vpc.private_sub
}
output "manage_vpc" {
  value = module.vpc.manage_vpc
}