output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "public_sub" {
  value = aws_subnet.public.*.id

}
output "private_sub" {
  value = aws_subnet.private.*.id
}
output "manage_vpc" {
  value = var.manage_vpc
}
