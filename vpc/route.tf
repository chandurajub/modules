resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "public" {
  count = length(data.aws_availability_zones.azs.names)
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private"
  }
}

resource "aws_route_table_association" "private" {
  count = length(data.aws_availability_zones.azs.names)
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = aws_route_table.private.id
}

resource "aws_route" "public" {
    route_table_id = aws_route_table.public.id
  destination_cidr_block = "${data.aws_vpc.manage_vpc.cidr_block}"
    gateway_id = aws_vpc_peering_connection.peer.id
    depends_on = [aws_route_table.public]


}
resource "aws_route" "private" {
    route_table_id = aws_route_table.private.id
  destination_cidr_block = "${data.aws_vpc.manage_vpc.cidr_block}"
    gateway_id = aws_vpc_peering_connection.peer.id
    depends_on = [aws_route_table.private]

}
/*resource "aws_route" "manage" {
  count = length(tolist(data.aws_route_tables.rt.ids))
  route_table_id = element(tolist(data.aws_route_tables.rt.ids), count.index)
  destination_cidr_block = "${aws_vpc.vpc.cidr_block}"
  gateway_id = aws_vpc_peering_connection.peer.id
}*/
resource "aws_route" "manage" {
  route_table_id = data.aws_vpc.manage_vpc.main_route_table_id
  destination_cidr_block = "${aws_vpc.vpc.cidr_block}"
  gateway_id = aws_vpc_peering_connection.peer.id
}



