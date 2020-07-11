resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id = element(aws_subnet.public.*.id,0)
}
resource "aws_eip" "eip" {
  vpc = true
}

